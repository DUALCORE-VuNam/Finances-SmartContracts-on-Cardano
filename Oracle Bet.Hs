{-# LANGUAGE OverloadedStrings #-}
module Example where

import Language.Marlowe.Extended.V1
import Plutus.V1.Ledger.Value (TokenName(..))
import Data.String (IsString(..))

main :: IO ()
main = printJSON example

soluongnguoichoi :: Int
soluongnguoichoi = 4  -- Điền số lượng người tham gia đoán giá

danhsachnguoichoi :: [String]
danhsachnguoichoi = ["nguoichoi" ++ show i | i <- [1..soluongnguoichoi]]

example :: Contract
example = nguoichoinoptien danhsachnguoichoi
  where
    nguoichoinoptien :: [String] -> Contract
    nguoichoinoptien [] = nguoichoidoangia danhsachnguoichoi []
    nguoichoinoptien (roleName:remaining) = When
        [Case
            (Deposit (Role (TokenName (fromString roleName))) 
                     (Role (TokenName (fromString roleName))) 
                     (Token "" "") 
                     (MulValue
                        (ConstantParam "SoluongADA")
                        (Constant 1000000)
                     ))
            (nguoichoinoptien remaining)
        ]
        (TimeParam "ThoiHanDeposit")
        Close
-- nguoi tham gia đoán giá
    nguoichoidoangia :: [String] -> [(String, Value)] -> Contract
    nguoichoidoangia [] doangia = When
        [Case
            (Choice (ChoiceId "Oracle" (Role (TokenName (fromString "Pricemarket")))) [Bound 1 1000000000000])
            (xacdinhnguoichienthang doangia (ChoiceValue (ChoiceId "Oracle" (Role (TokenName (fromString "Pricemarket"))))))
        ]
        (TimeParam "ThoiHanOracle")
        Close
    nguoichoidoangia (roleName:remaining) doangia = When
        [Case
            (Choice (ChoiceId (fromString (roleName ++ " doangia")) 
                              (Role (TokenName (fromString roleName)))) 
                    [Bound 1 1000000000000])
            (nguoichoidoangia remaining ((roleName, ChoiceValue (ChoiceId (fromString (roleName ++ " doangia")) 
                                                          (Role (TokenName (fromString roleName))))) : doangia))
        ]
        (TimeParam "ThoiHandoangia")
        Close
-- tìm người chiến thắng
    xacdinhnguoichienthang :: [(String, Value)] -> Value -> Contract
    xacdinhnguoichienthang doangia oraclePrice = foldl (flip sosanhNguoiChoi) Close doangia --ưuu tiên người đoán trước 
      where
        sosanhNguoiChoi :: (String, Value) -> Contract -> Contract
        sosanhNguoiChoi (roleName, giadoan) nextContract = If
            (OrObs
                (ValueEQ (hieutrituyetdoi giadoan oraclePrice) (minhieutrituyetdoi doangia oraclePrice)) -- Gần nhất
                (ValueEQ giadoan oraclePrice) -- Đúng giá trị Oracle
            )
            (payAll roleName) -- Người chiến thắng
            nextContract -- Tiếp tục kiểm tra

        -- Tính trị tuyệt đối chênh lệch
        hieutrituyetdoi :: Value -> Value -> Value
        hieutrituyetdoi x y = Cond (ValueGT (SubValue x y) (Constant 0))
                                      (SubValue x y)
                                      (SubValue y x)

        -- Tìm khoảng cách nhỏ nhất
        minhieutrituyetdoi :: [(String, Value)] -> Value -> Value
        minhieutrituyetdoi nguoidoangia oracle = foldr1 (\v1 v2 -> Cond (ValueLT v1 v2) v1 v2) (map (\(_, g) -> hieutrituyetdoi g oracle) nguoidoangia)

        -- Thanh toán toàn bộ số tiền cho người chiến thắng
        payAll :: String -> Contract
        payAll winner = foldr chuyentien Close danhsachnguoichoi
          where
            chuyentien :: String -> Contract -> Contract
            chuyentien nguoichoi nextContract = Pay
                (Role (TokenName (fromString nguoichoi))) -- Người tham gia
                (Party (Role (TokenName (fromString winner)))) -- Người chiến thắng
                (Token "" "") -- Token chuyển
                (MulValue
                    (ConstantParam "SoluongADA") -- Số lượng ADA mà mỗi người tham gia gửi
                    (Constant 1000000)
                )
                nextContract
