When
    [Case
        (Deposit
            (Role "COC")
            (Address "NguoiChoiA")
            (Token "" "")
            (Constant 10000000000)
        )
        (When
            [Case
                (Deposit
                    (Role "COC")
                    (Address "NguoiChoiB")
                    (Token "" "")
                    (Constant 10000000000)
                )
                (When
                    [Case
                        (Deposit
                            (Role "COC")
                            (Address "NguoiChoiC")
                            (Token "" "")
                            (Constant 10000000000)
                        )
                        (When
                            [Case
                                (Choice
                                    (ChoiceId
                                        "oraclebaogiakhoidiemlan1"
                                        (Address "addressoracle")
                                    )
                                    [Bound 25 30]
                                )
                                (Let
                                    "GiaKhoiDiem"
                                    (DivValue
                                        (MulValue
                                            (Constant 10000000000)
                                            (ChoiceValue
                                                (ChoiceId
                                                    "oraclebaogiakhoidiemlan1"
                                                    (Address "addressoracle")
                                                ))
                                        )
                                        (Constant 100)
                                    )
                                    (When
                                        []
                                        (TimeParam "timedaugialan1")
                                        (Let
                                            "GiaKhoiDiem"
                                            (UseValue "GiaKhoiDiem")
                                            (When
                                                [Case
                                                    (Choice
                                                        (ChoiceId
                                                            "NguoiChoiA"
                                                            (Role "NguoiChoiA")
                                                        )
                                                        [Bound 1 1]
                                                    )
                                                    (If
                                                        (ValueEQ
                                                            (ChoiceValue
                                                                (ChoiceId
                                                                    "NguoiChoiA"
                                                                    (Role "NguoiChoiA")
                                                                ))
                                                            (Constant 1)
                                                        )
                                                        (Let
                                                            "TRUE"
                                                            (UseValue "A.HasClaimed")
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Role "NguoiChoiB")
                                                                        (Role "NguoiChoiB")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                    )
                                                                    (When
                                                                        [Case
                                                                            (Deposit
                                                                                (Role "NguoiChoiC")
                                                                                (Role "NguoiChoiC")
                                                                                (Token "" "")
                                                                                (SubValue
                                                                                    (Constant 10000000000)
                                                                                    (UseValue "GiaKhoiDiem")
                                                                                )
                                                                            )
                                                                            (Pay
                                                                                (Role "NguoiChoiB")
                                                                                (Account (Role "NguoiChoiA"))
                                                                                (Token "" "")
                                                                                (SubValue
                                                                                    (Constant 10000000000)
                                                                                    (UseValue "GiaKhoiDiem")
                                                                                )
                                                                                (Pay
                                                                                    (Role "NguoiChoiC")
                                                                                    (Account (Role "NguoiChoiA"))
                                                                                    (Token "" "")
                                                                                    (SubValue
                                                                                        (Constant 10000000000)
                                                                                        (UseValue "GiaKhoiDiem")
                                                                                    )
                                                                                    Close 
                                                                                )
                                                                            )]
                                                                        (TimeParam "timedonghuilan1")
                                                                        Close 
                                                                    )]
                                                                (TimeParam "timedonghuilan1")
                                                                Close 
                                                            )
                                                        )
                                                        (Let
                                                            "FALSE"
                                                            (UseValue "A.HasClaimed")
                                                            Close 
                                                        )
                                                    ), Case
                                                    (Choice
                                                        (ChoiceId
                                                            "NguoiChoiB"
                                                            (Role "NguoiChoiB")
                                                        )
                                                        [Bound 1 1]
                                                    )
                                                    (If
                                                        (ValueEQ
                                                            (ChoiceValue
                                                                (ChoiceId
                                                                    "NguoiChoiB"
                                                                    (Role "NguoiChoiB")
                                                                ))
                                                            (Constant 1)
                                                        )
                                                        (Let
                                                            "TRUE"
                                                            (UseValue "B.HasClaimed")
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Role "NguoiChoiA")
                                                                        (Role "NguoiChoiA")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                    )
                                                                    (When
                                                                        [Case
                                                                            (Deposit
                                                                                (Role "NguoiChoiC")
                                                                                (Role "NguoiChoiC")
                                                                                (Token "" "")
                                                                                (SubValue
                                                                                    (Constant 10000000000)
                                                                                    (UseValue "GiaKhoiDiem")
                                                                                )
                                                                            )
                                                                            (Pay
                                                                                (Role "NguoiChoiA")
                                                                                (Account (Role "NguoiChoiB"))
                                                                                (Token "" "")
                                                                                (SubValue
                                                                                    (Constant 10000000000)
                                                                                    (UseValue "GiaKhoiDiem")
                                                                                )
                                                                                (Pay
                                                                                    (Role "NguoiChoiC")
                                                                                    (Account (Role "NguoiChoiB"))
                                                                                    (Token "" "")
                                                                                    (SubValue
                                                                                        (Constant 10000000000)
                                                                                        (UseValue "GiaKhoiDiem")
                                                                                    )
                                                                                    Close 
                                                                                )
                                                                            )]
                                                                        (TimeParam "timedonghuilan1")
                                                                        Close 
                                                                    )]
                                                                (TimeParam "timedonghuilan1")
                                                                Close 
                                                            )
                                                        )
                                                        (Let
                                                            "FALSE"
                                                            (UseValue "B.HasClaimed")
                                                            Close 
                                                        )
                                                    ), Case
                                                    (Choice
                                                        (ChoiceId
                                                            "NguoiChoiC"
                                                            (Role "NguoiChoiC")
                                                        )
                                                        [Bound 1 1]
                                                    )
                                                    (If
                                                        (ValueEQ
                                                            (ChoiceValue
                                                                (ChoiceId
                                                                    "NguoiChoiC"
                                                                    (Role "NguoiChoiC")
                                                                ))
                                                            (Constant 1)
                                                        )
                                                        (Let
                                                            "TRUE"
                                                            (UseValue "C.HasClaimed")
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Role "NguoiChoiA")
                                                                        (Role "NguoiChoiA")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                    )
                                                                    (When
                                                                        [Case
                                                                            (Deposit
                                                                                (Role "NguoiChoiB")
                                                                                (Role "NguoiChoiB")
                                                                                (Token "" "")
                                                                                (SubValue
                                                                                    (Constant 10000000000)
                                                                                    (UseValue "GiaKhoiDiem")
                                                                                )
                                                                            )
                                                                            (Pay
                                                                                (Role "NguoiChoiA")
                                                                                (Account (Role "NguoiChoiC"))
                                                                                (Token "" "")
                                                                                (SubValue
                                                                                    (Constant 10000000000)
                                                                                    (UseValue "GiaKhoiDiem")
                                                                                )
                                                                                (Pay
                                                                                    (Role "NguoiChoiB")
                                                                                    (Account (Role "NguoiChoiC"))
                                                                                    (Token "" "")
                                                                                    (SubValue
                                                                                        (Constant 10000000000)
                                                                                        (UseValue "GiaKhoiDiem")
                                                                                    )
                                                                                    Close 
                                                                                )
                                                                            )]
                                                                        (TimeParam "timedonghuilan1")
                                                                        Close 
                                                                    )]
                                                                (TimeParam "timedonghuilan1")
                                                                Close 
                                                            )
                                                        )
                                                        (Let
                                                            "FALSE"
                                                            (UseValue "C.HasClaimed")
                                                            Close 
                                                        )
                                                    )]
                                                (TimeParam "timeketthucdaugialan1")
                                                (When
                                                    [Case
                                                        (Choice
                                                            (ChoiceId
                                                                "oraclebaogiakhoidiemlan2"
                                                                (Address "addressoracle")
                                                            )
                                                            [Bound 20 25]
                                                        )
                                                        (Let
                                                            "GiaKhoiDiemLan2"
                                                            (SubValue
                                                                (UseValue "GiaKhoiDiem")
                                                                (DivValue
                                                                    (MulValue
                                                                        (UseValue "GiaKhoiDiem")
                                                                        (ChoiceValue
                                                                            (ChoiceId
                                                                                "oraclebaogiakhoidiemlan2"
                                                                                (Address "addressoracle")
                                                                            ))
                                                                    )
                                                                    (Constant 100)
                                                                )
                                                            )
                                                            (When
                                                                []
                                                                (TimeParam "timedaugialan2")
                                                                (Let
                                                                    "GiaKhoiDiemLan2"
                                                                    (UseValue "GiaKhoiDiemLan2")
                                                                    (When
                                                                        [Case
                                                                            (Choice
                                                                                (ChoiceId
                                                                                    "NguoiChoiA"
                                                                                    (Role "NguoiChoiA")
                                                                                )
                                                                                [Bound 1 1]
                                                                            )
                                                                            (If
                                                                                (ValueEQ
                                                                                    (ChoiceValue
                                                                                        (ChoiceId
                                                                                            "NguoiChoiA"
                                                                                            (Role "NguoiChoiA")
                                                                                        ))
                                                                                    (Constant 1)
                                                                                )
                                                                                (Let
                                                                                    "TRUE"
                                                                                    (UseValue "A.HasClaimed")
                                                                                    (When
                                                                                        [Case
                                                                                            (Deposit
                                                                                                (Role "NguoiChoiB")
                                                                                                (Role "NguoiChoiB")
                                                                                                (Token "" "")
                                                                                                (SubValue
                                                                                                    (Constant 10000000000)
                                                                                                    (UseValue "GiaKhoiDiemLan2")
                                                                                                )
                                                                                            )
                                                                                            (When
                                                                                                [Case
                                                                                                    (Deposit
                                                                                                        (Role "NguoiChoiC")
                                                                                                        (Role "NguoiChoiC")
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                    )
                                                                                                    (Pay
                                                                                                        (Role "NguoiChoiB")
                                                                                                        (Account (Role "NguoiChoiA"))
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                        (Pay
                                                                                                            (Role "NguoiChoiC")
                                                                                                            (Account (Role "NguoiChoiA"))
                                                                                                            (Token "" "")
                                                                                                            (SubValue
                                                                                                                (Constant 10000000000)
                                                                                                                (UseValue "GiaKhoiDiemLan2")
                                                                                                            )
                                                                                                            Close 
                                                                                                        )
                                                                                                    )]
                                                                                                (TimeParam "timedonghuilan2")
                                                                                                Close 
                                                                                            )]
                                                                                        (TimeParam "timedonghuilan2")
                                                                                        Close 
                                                                                    )
                                                                                )
                                                                                (Let
                                                                                    "FALSE"
                                                                                    (UseValue "A.HasClaimed")
                                                                                    Close 
                                                                                )
                                                                            ), Case
                                                                            (Choice
                                                                                (ChoiceId
                                                                                    "NguoiChoiB"
                                                                                    (Role "NguoiChoiB")
                                                                                )
                                                                                [Bound 1 1]
                                                                            )
                                                                            (If
                                                                                (ValueEQ
                                                                                    (ChoiceValue
                                                                                        (ChoiceId
                                                                                            "NguoiChoiB"
                                                                                            (Role "NguoiChoiB")
                                                                                        ))
                                                                                    (Constant 1)
                                                                                )
                                                                                (Let
                                                                                    "TRUE"
                                                                                    (UseValue "B.HasClaimed")
                                                                                    (When
                                                                                        [Case
                                                                                            (Deposit
                                                                                                (Role "NguoiChoiA")
                                                                                                (Role "NguoiChoiA")
                                                                                                (Token "" "")
                                                                                                (SubValue
                                                                                                    (Constant 10000000000)
                                                                                                    (UseValue "GiaKhoiDiemLan2")
                                                                                                )
                                                                                            )
                                                                                            (When
                                                                                                [Case
                                                                                                    (Deposit
                                                                                                        (Role "NguoiChoiC")
                                                                                                        (Role "NguoiChoiC")
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                    )
                                                                                                    (Pay
                                                                                                        (Role "NguoiChoiA")
                                                                                                        (Account (Role "NguoiChoiB"))
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                        (Pay
                                                                                                            (Role "NguoiChoiC")
                                                                                                            (Account (Role "NguoiChoiB"))
                                                                                                            (Token "" "")
                                                                                                            (SubValue
                                                                                                                (Constant 10000000000)
                                                                                                                (UseValue "GiaKhoiDiemLan2")
                                                                                                            )
                                                                                                            Close 
                                                                                                        )
                                                                                                    )]
                                                                                                (TimeParam "timedonghuilan2")
                                                                                                Close 
                                                                                            )]
                                                                                        (TimeParam "timedonghuilan2")
                                                                                        Close 
                                                                                    )
                                                                                )
                                                                                (Let
                                                                                    "FALSE"
                                                                                    (UseValue "B.HasClaimed")
                                                                                    Close 
                                                                                )
                                                                            ), Case
                                                                            (Choice
                                                                                (ChoiceId
                                                                                    "NguoiChoiC"
                                                                                    (Role "NguoiChoiC")
                                                                                )
                                                                                [Bound 1 1]
                                                                            )
                                                                            (If
                                                                                (ValueEQ
                                                                                    (ChoiceValue
                                                                                        (ChoiceId
                                                                                            "NguoiChoiC"
                                                                                            (Role "NguoiChoiC")
                                                                                        ))
                                                                                    (Constant 1)
                                                                                )
                                                                                (Let
                                                                                    "TRUE"
                                                                                    (UseValue "C.HasClaimed")
                                                                                    (When
                                                                                        [Case
                                                                                            (Deposit
                                                                                                (Role "NguoiChoiA")
                                                                                                (Role "NguoiChoiA")
                                                                                                (Token "" "")
                                                                                                (SubValue
                                                                                                    (Constant 10000000000)
                                                                                                    (UseValue "GiaKhoiDiemLan2")
                                                                                                )
                                                                                            )
                                                                                            (When
                                                                                                [Case
                                                                                                    (Deposit
                                                                                                        (Role "NguoiChoiB")
                                                                                                        (Role "NguoiChoiB")
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                    )
                                                                                                    (Pay
                                                                                                        (Role "NguoiChoiA")
                                                                                                        (Account (Role "NguoiChoiC"))
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                        (Pay
                                                                                                            (Role "NguoiChoiB")
                                                                                                            (Account (Role "NguoiChoiC"))
                                                                                                            (Token "" "")
                                                                                                            (SubValue
                                                                                                                (Constant 10000000000)
                                                                                                                (UseValue "GiaKhoiDiemLan2")
                                                                                                            )
                                                                                                            Close 
                                                                                                        )
                                                                                                    )]
                                                                                                (TimeParam "timedonghuilan2")
                                                                                                Close 
                                                                                            )]
                                                                                        (TimeParam "timedonghuilan2")
                                                                                        Close 
                                                                                    )
                                                                                )
                                                                                (Let
                                                                                    "FALSE"
                                                                                    (UseValue "C.HasClaimed")
                                                                                    Close 
                                                                                )
                                                                            )]
                                                                        (TimeParam "timeketthucdaugialan2")
                                                                        (When
                                                                            [Case
                                                                                (Choice
                                                                                    (ChoiceId
                                                                                        "oraclebaogiakhoidiemlan3"
                                                                                        (Address "addressoracle")
                                                                                    )
                                                                                    [Bound 20 25]
                                                                                )
                                                                                (Let
                                                                                    "GiaKhoiDiemLan3"
                                                                                    (SubValue
                                                                                        (UseValue "GiaKhoiDiemLan2")
                                                                                        (DivValue
                                                                                            (MulValue
                                                                                                (UseValue "GiaKhoiDiemLan2")
                                                                                                (ChoiceValue
                                                                                                    (ChoiceId
                                                                                                        "oraclebaogiakhoidiemlan3"
                                                                                                        (Address "addressoracle")
                                                                                                    ))
                                                                                            )
                                                                                            (Constant 100)
                                                                                        )
                                                                                    )
                                                                                    (When
                                                                                        []
                                                                                        (TimeParam "timedaugialan3")
                                                                                        (Let
                                                                                            "GiaKhoiDiemLan3"
                                                                                            (UseValue "GiaKhoiDiemLan3")
                                                                                            (When
                                                                                                [Case
                                                                                                    (Choice
                                                                                                        (ChoiceId
                                                                                                            "NguoiChoiA"
                                                                                                            (Role "NguoiChoiA")
                                                                                                        )
                                                                                                        [Bound 1 1]
                                                                                                    )
                                                                                                    (If
                                                                                                        (ValueEQ
                                                                                                            (ChoiceValue
                                                                                                                (ChoiceId
                                                                                                                    "NguoiChoiA"
                                                                                                                    (Role "NguoiChoiA")
                                                                                                                ))
                                                                                                            (Constant 1)
                                                                                                        )
                                                                                                        (Let
                                                                                                            "TRUE"
                                                                                                            (UseValue "A.HasClaimed")
                                                                                                            (When
                                                                                                                [Case
                                                                                                                    (Deposit
                                                                                                                        (Role "NguoiChoiB")
                                                                                                                        (Role "NguoiChoiB")
                                                                                                                        (Token "" "")
                                                                                                                        (SubValue
                                                                                                                            (Constant 10000000000)
                                                                                                                            (UseValue "GiaKhoiDiemLan3")
                                                                                                                        )
                                                                                                                    )
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Deposit
                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiemLan3")
                                                                                                                                )
                                                                                                                            )
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                (Account (Role "NguoiChoiA"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiemLan3")
                                                                                                                                )
                                                                                                                                (Pay
                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                    (Account (Role "NguoiChoiA"))
                                                                                                                                    (Token "" "")
                                                                                                                                    (SubValue
                                                                                                                                        (Constant 10000000000)
                                                                                                                                        (UseValue "GiaKhoiDiemLan3")
                                                                                                                                    )
                                                                                                                                    Close 
                                                                                                                                )
                                                                                                                            )]
                                                                                                                        (TimeParam "timedonghuilan3")
                                                                                                                        Close 
                                                                                                                    )]
                                                                                                                (TimeParam "timedonghuilan3")
                                                                                                                Close 
                                                                                                            )
                                                                                                        )
                                                                                                        (Let
                                                                                                            "FALSE"
                                                                                                            (UseValue "A.HasClaimed")
                                                                                                            Close 
                                                                                                        )
                                                                                                    ), Case
                                                                                                    (Choice
                                                                                                        (ChoiceId
                                                                                                            "NguoiChoiB"
                                                                                                            (Role "NguoiChoiB")
                                                                                                        )
                                                                                                        [Bound 1 1]
                                                                                                    )
                                                                                                    (If
                                                                                                        (ValueEQ
                                                                                                            (ChoiceValue
                                                                                                                (ChoiceId
                                                                                                                    "NguoiChoiB"
                                                                                                                    (Role "NguoiChoiB")
                                                                                                                ))
                                                                                                            (Constant 1)
                                                                                                        )
                                                                                                        (Let
                                                                                                            "TRUE"
                                                                                                            (UseValue "B.HasClaimed")
                                                                                                            (When
                                                                                                                [Case
                                                                                                                    (Deposit
                                                                                                                        (Role "NguoiChoiA")
                                                                                                                        (Role "NguoiChoiA")
                                                                                                                        (Token "" "")
                                                                                                                        (SubValue
                                                                                                                            (Constant 10000000000)
                                                                                                                            (UseValue "GiaKhoiDiemLan3")
                                                                                                                        )
                                                                                                                    )
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Deposit
                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiemLan3")
                                                                                                                                )
                                                                                                                            )
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                (Account (Role "NguoiChoiB"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiemLan3")
                                                                                                                                )
                                                                                                                                (Pay
                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                    (Account (Role "NguoiChoiB"))
                                                                                                                                    (Token "" "")
                                                                                                                                    (SubValue
                                                                                                                                        (Constant 10000000000)
                                                                                                                                        (UseValue "GiaKhoiDiemLan3")
                                                                                                                                    )
                                                                                                                                    Close 
                                                                                                                                )
                                                                                                                            )]
                                                                                                                        (TimeParam "timedonghuilan3")
                                                                                                                        Close 
                                                                                                                    )]
                                                                                                                (TimeParam "timedonghuilan3")
                                                                                                                Close 
                                                                                                            )
                                                                                                        )
                                                                                                        (Let
                                                                                                            "FALSE"
                                                                                                            (UseValue "B.HasClaimed")
                                                                                                            Close 
                                                                                                        )
                                                                                                    ), Case
                                                                                                    (Choice
                                                                                                        (ChoiceId
                                                                                                            "NguoiChoiC"
                                                                                                            (Role "NguoiChoiC")
                                                                                                        )
                                                                                                        [Bound 1 1]
                                                                                                    )
                                                                                                    (If
                                                                                                        (ValueEQ
                                                                                                            (ChoiceValue
                                                                                                                (ChoiceId
                                                                                                                    "NguoiChoiC"
                                                                                                                    (Role "NguoiChoiC")
                                                                                                                ))
                                                                                                            (Constant 1)
                                                                                                        )
                                                                                                        (Let
                                                                                                            "TRUE"
                                                                                                            (UseValue "C.HasClaimed")
                                                                                                            (When
                                                                                                                [Case
                                                                                                                    (Deposit
                                                                                                                        (Role "NguoiChoiA")
                                                                                                                        (Role "NguoiChoiA")
                                                                                                                        (Token "" "")
                                                                                                                        (SubValue
                                                                                                                            (Constant 10000000000)
                                                                                                                            (UseValue "GiaKhoiDiemLan3")
                                                                                                                        )
                                                                                                                    )
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Deposit
                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiemLan3")
                                                                                                                                )
                                                                                                                            )
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                (Account (Role "NguoiChoiC"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiemLan3")
                                                                                                                                )
                                                                                                                                (Pay
                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                    (Account (Role "NguoiChoiC"))
                                                                                                                                    (Token "" "")
                                                                                                                                    (SubValue
                                                                                                                                        (Constant 10000000000)
                                                                                                                                        (UseValue "GiaKhoiDiemLan3")
                                                                                                                                    )
                                                                                                                                    Close 
                                                                                                                                )
                                                                                                                            )]
                                                                                                                        (TimeParam "timedonghuilan3")
                                                                                                                        Close 
                                                                                                                    )]
                                                                                                                (TimeParam "timedonghuilan3")
                                                                                                                Close 
                                                                                                            )
                                                                                                        )
                                                                                                        (Let
                                                                                                            "FALSE"
                                                                                                            (UseValue "C.HasClaimed")
                                                                                                            Close 
                                                                                                        )
                                                                                                    )]
                                                                                                (TimeParam "timeketthucdaugialan3")
                                                                                                Close 
                                                                                            )
                                                                                        )
                                                                                    )
                                                                                )]
                                                                            (TimeParam "timeoraclebaogiakhoidiemlan3")
                                                                            Close 
                                                                        )
                                                                    )
                                                                )
                                                            )
                                                        )]
                                                    (TimeParam "timeoraclebaogiakhoidiemlan2")
                                                    Close 
                                                )
                                            )
                                        )
                                    )
                                )]
                            (TimeParam "timeoraclebaogiakhoidiemlan1")
                            Close 
                        )]
                    (TimeParam "timechuyencoc")
                    Close 
                )]
            (TimeParam "timechuyencoc")
            Close 
        )]
    (TimeParam "timechuyencoc")
    Close 
