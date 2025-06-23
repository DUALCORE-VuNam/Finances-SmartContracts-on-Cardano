When
    [Case
        (Deposit
            (Role "writer")
            (Role "vault")
            (Token "" "collateral_token")
            (DivValue
                (MulValue
                    (ConstantParam "strike_price")
                    (ConstantParam "underlying_amount")
                )
                (Constant 1000000)
            )
        )
        (When
            [Case
                (Deposit
                    (Role "buyer")
                    (Role "vault")
                    (Token "" "")
                    (ConstantParam "premium")
                )
                (When
                    [Case
                        (Choice
                            (ChoiceId
                                "PriceADA_Expiry"
                                (Role "oracle")
                            )
                            [Bound 0 1000000]
                        )
                        (If
                            (ValueLT
                                (ConstantParam "strike_price")
                                (ChoiceValue
                                    (ChoiceId
                                        "PriceADA_Expiry"
                                        (Role "oracle")
                                    ))
                            )
                            Close 
                            (When
                                [Case
                                    (Deposit
                                        (Role "OptionHolder")
                                        (Role "vault")
                                        (Token "" "")
                                        (ConstantParam "underlying_amount")
                                    )
                                    (Pay
                                        (Role "vault")
                                        (Party (Role "OptionHolder"))
                                        (Token "" "collateral_token")
                                        (DivValue
                                            (MulValue
                                                (ConstantParam "strike_price")
                                                (ConstantParam "underlying_amount")
                                            )
                                            (Constant 1000000)
                                        )
                                        Close 
                                    )]
                                (TimeParam "expiry_end")
                                (Pay
                                    (Role "vault")
                                    (Party (Role "buyer"))
                                    (Token "" "")
                                    (DivValue
                                        (MulValue
                                            (ConstantParam "premium")
                                            (Constant 20)
                                        )
                                        (Constant 100)
                                    )
                                    Close 
                                )
                            )
                        )]
                    (TimeParam "expiry_start")
                    Close 
                )]
            (TimeParam "premium_deadline")
            Close 
        )]
    (TimeParam "collateral_deadline")
    Close 
