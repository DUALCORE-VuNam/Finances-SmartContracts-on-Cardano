import { Blockfrost, Data, Lucid, Addresses, Constr, fromText, toHex } from  "https://deno.land/x/lucid/mod.ts";



const lucid = new Lucid({
  provider: new Blockfrost(
    "https://cardano-preview.blockfrost.io/api/v0",
    "",
  ),
});

const seed = ""
lucid.selectWalletFromSeed(seed, { addressType: "Base", index: 1 });

// Get address
const address = await lucid.wallet.address(); // Bech32 address
console.log (`Đ/c ví gửi: ${address}`)   //Hiện thị địa chỉ ví
const { payment: paymentOwner  } = Addresses.inspect(address);
console.log(`paymentOwner.hash: ${paymentOwner.hash}`); 

// Deno.exit(0); // Thoát chương trình

//scripts datum==redeemer 
const vesting_scripts = lucid.newScript({
  type: "PlutusV3",
  script: "59018d01010029800aba2aba1aba0aab9faab9eaab9dab9a488888896600264653001300800198041804800cdc3a400530080024888966002600460106ea800e2646644b30013370e900018059baa0018cc004c03cc030dd5000c8c040c044c044c044c044c044c044c044c04400644646600200200644b30010018a508acc004cdc79bae30130010038a51899801001180a000a01c40449112cc004cc004dd6180118079baa007375c60246026601e6ea800e29462b30013300137586004601e6ea801cdd718091809980998079baa003899191919912cc004c034c04cdd50014566002601a60266ea8c05cc06000e266e20004dd6980b980a1baa002899b89001375a602e60286ea8009012452820243015001375a602a60246ea8018cc04cc050004cc04e6002601460206ea8c050c05400698103d87a8000a60103d8798000403c97ae030103754602660206ea8004c048c04cc04cc04cc04cc04cc04cc04cc03cdd5003c528201a40348b2014300d001300d300e0013009375400716401c300800130033754011149a26cac8009",
           
});

const signerbyAddress = vesting_scripts.toAddress();
console.log(`vesting address: ${signerbyAddress}`);

const Vestingdatum = Data.Object({
  lock_until: Data.Integer(),
  owner: Data.Bytes,
  beneficiary: Data.Bytes(), //VerificationKeyHash
});

type Vestingdatum = typeof Vestingdatum;

//---------------------------------------------------
// Set the vesting deadline
const deadlineDate1: Date = new Date("2025-04-01T10:00:00Z");
const deadlineDate: Date = Date.now(); 
const offset = 25 * 60 * 1000; // 5 phút
const deadlinePosIx =BigInt((deadlineDate+offset))
console.log("deadlinePosIx: ", deadlinePosIx);

// Deno.exit(0); // Thoát chương trình
const { payment: paymentBeneficiary } = Addresses.inspect(
  "addr_test1qz8shh6wqssr83hurdmqx44js8v7tglg9lm3xh89auw007dd38kf3ymx9c2w225uc7yjmplr794wvc96n5lsy0wsm8fq9n5epq",
);
console.log(`paymentBeneficiary.hash: ${paymentBeneficiary.hash}`); 

// Tạo Datum với giá trị cụ thể
const d = {
    lock_until: deadlinePosIx,
    owner: paymentOwner?.hash,
    beneficiary: paymentBeneficiary?.hash,
};
const datum = await Data.to<Vestingdatum>(d, Vestingdatum);


// Định nghĩa cấu trúc Redeemer
const RedeemerSchema = Data.Object({
  value: Data.Bytes, // msg là một ByteArray
});
type RedeemerSchema = typeof RedeemerSchema;

// Tạo một Redeemer với giá trị cụ thể
const Redeemer = () => Data.to({ value: fromText("Hello world!") }, RedeemerSchema); // "48656c6c6f20576f726c64" là chuỗi "Hello World" được mã hóa dưới dạng hex
const lovelace_lock=45_100_123n 


// Deno.exit(0); // Thoát chương trình


// Lock UTxO ================================================================  

export async function lockUtxo(lovelace: bigint,): Promise<string> {
  console.log("=====Lock UTxO===========================================================")
  console.log("")
  console.log("Datum lock_until: ", Number(d.lock_until));

  const tx = await lucid
    .newTx()
    .payToContract(signerbyAddress, { Inline: datum }, { lovelace })
    .validTo(Date.now() + 100000)
    .commit();

  const signedTx = await tx.sign().commit();
  // console.log(signedTx);

  const txHash = await signedTx.submit();

  return txHash;
}

// Mở khóa UTxO ================================================================  

export async function unlockUtxo(redeemer: RedeemerSchema, find_vest: Data.Bytes): Promise<string> {
  // Tìm UTxO tại địa chỉ signerbyAddress
  console.log("====Unlock UTxO============================================================")
  console.log("")
  const utxo = (await lucid.utxosAt(signerbyAddress)).find((utxo) => {
    if (!utxo.scriptRef && utxo.datum) {
      // Giải mã utxo.datum thành đối tượng Vestingdatum
      const decodedDatum = Data.from<Vestingdatum>(utxo.datum, Vestingdatum);

      // So sánh trường owner với expectedOwner
      return decodedDatum.owner === find_vest || decodedDatum.beneficiary === find_vest;
    }
    return false;
  });

  if (!utxo) {
    throw new Error("No matching UTxO found");   
  }

  console.log(`Unlock UTxO.txhash: ${utxo.txHash}`); // Hiển thị Datum của UTxO

  const decodedDatum1 = Data.from<Vestingdatum>(utxo.datum, Vestingdatum);
  // console.log("Now:              ", BigInt(lucid.utils.unixTimeToSlots(Date.now()) ));
  // console.log("Now:              ", Date.now()) ;
  console.log("Datum lock_until: ", Number(decodedDatum1.lock_until));
  console.log("Time offset:      ", -Number(decodedDatum1.lock_until) + Date.now());
  console.log(`Datum owner: ${decodedDatum1.owner}`);
  console.log(`Datum beneficiary: ${decodedDatum1.beneficiary}`);

  console.log(`Redeemer: ${redeemer}`); 
 
  const offsetvalid= 1 * 60 * 1000; // 1 phút

  // Tiếp tục thực hiện giao dịch
  const tx = await lucid
    .newTx()
    .collectFrom([utxo], redeemer)
    .attachScript(vesting_scripts)
    .addSigner(paymentOwner?.hash)
    .validTo(Date.now() + offsetvalid)
    .validFrom(Date.now() - offsetvalid)
    .commit();
  
  const signedTx = await tx.sign().commit();
  // console.log("tx: ", tx);
  const txHash = await signedTx.submit();

  return txHash;
}

async function main() {
  try {
    // Gọi hàm lockUtxo để khóa UTxO
    // const txHash = await lockUtxo(lovelace_lock); 


    // Gọi hàm unlockUtxo để mở khóa UTxO
    const txHash = await unlockUtxo(Redeemer(), d.owner);

  console.log(`Transaction hash: https://preview.cexplorer.io/tx/${txHash}`);
  } catch (error) {
    console.error("Error main :", error);
  }
}

main();
