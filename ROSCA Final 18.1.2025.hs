When
    [Case
        (Deposit
            (Address "QuyCocHui")
            (Address "NguoiChoiA")
            (Token "" "")
            (Constant 10000000000)
        )
        (When
            [Case
                (Deposit
                    (Address "QuyCocHui")
                    (Address "NguoiChoiB")
                    (Token "" "")
                    (Constant 10000000000)
                )
                (When
                    [Case
                        (Deposit
                            (Address "QuyCocHui")
                            (Address "NguoiChoiC")
                            (Token "" "")
                            (Constant 10000000000)
                        )
                        (When
                            []
                            (TimeParam "2.0.Time_Thang1_BatDau")
                            (When
                                [Case
                                    (Choice
                                        (ChoiceId
                                            "Oracle_GiaKhoiDiem_Thang1_Lan1"
                                            (Address "AddressOracle")
                                        )
                                        [Bound 25 30]
                                    )
                                    (Let
                                        "GiaKhoiDiem_Thang1"
                                        (DivValue
                                            (MulValue
                                                (Constant 10000000000)
                                                (ChoiceValue
                                                    (ChoiceId
                                                        "Oracle_GiaKhoiDiem_Thang1_Lan1"
                                                        (Address "AddressOracle")
                                                    ))
                                            )
                                            (Constant 100)
                                        )
                                        (Let
                                            "GiaKhoiDiem_Thang1"
                                            (UseValue "GiaKhoiDiem_Thang1")
                                            (When
                                                [Case
                                                    (Choice
                                                        (ChoiceId
                                                            "NguoiChoiA"
                                                            (Address "NguoiChoiA")
                                                        )
                                                        [Bound 1 1]
                                                    )
                                                    (When
                                                        [Case
                                                            (Deposit
                                                                (Address "NguoiChoiB")
                                                                (Address "NguoiChoiB")
                                                                (Token "" "")
                                                                (SubValue
                                                                    (Constant 10000000000)
                                                                    (UseValue "GiaKhoiDiem_Thang1")
                                                                )
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Address "NguoiChoiC")
                                                                        (Address "NguoiChoiC")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem_Thang1")
                                                                        )
                                                                    )
                                                                    (Pay
                                                                        (Address "NguoiChoiB")
                                                                        (Account (Address "NguoiChoiA"))
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem_Thang1")
                                                                        )
                                                                        (Pay
                                                                            (Address "NguoiChoiC")
                                                                            (Account (Address "NguoiChoiA"))
                                                                            (Token "" "")
                                                                            (SubValue
                                                                                (Constant 10000000000)
                                                                                (UseValue "GiaKhoiDiem_Thang1")
                                                                            )
                                                                            (When
                                                                                []
                                                                                (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                (When
                                                                                    [Case
                                                                                        (Choice
                                                                                            (ChoiceId
                                                                                                "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                (Address "AddressOracle")
                                                                                            )
                                                                                            [Bound 25 30]
                                                                                        )
                                                                                        (Let
                                                                                            "GiaKhoiDiem_Thang2"
                                                                                            (DivValue
                                                                                                (MulValue
                                                                                                    (Constant 10000000000)
                                                                                                    (ChoiceValue
                                                                                                        (ChoiceId
                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                            (Address "AddressOracle")
                                                                                                        ))
                                                                                                )
                                                                                                (Constant 100)
                                                                                            )
                                                                                            (Let
                                                                                                "GiaKhoiDiem_Thang2"
                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                (When
                                                                                                    [Case
                                                                                                        (Choice
                                                                                                            (ChoiceId
                                                                                                                "NguoiChoiB"
                                                                                                                (Role "NguoiChoiB")
                                                                                                            )
                                                                                                            [Bound 1 1]
                                                                                                        )
                                                                                                        (When
                                                                                                            [Case
                                                                                                                (Deposit
                                                                                                                    (Role "NguoiChoiA")
                                                                                                                    (Role "NguoiChoiA")
                                                                                                                    (Token "" "")
                                                                                                                    (Constant 10000000000)
                                                                                                                )
                                                                                                                (When
                                                                                                                    [Case
                                                                                                                        (Deposit
                                                                                                                            (Role "NguoiChoiC")
                                                                                                                            (Role "NguoiChoiC")
                                                                                                                            (Token "" "")
                                                                                                                            (SubValue
                                                                                                                                (Constant 10000000000)
                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            )
                                                                                                                        )
                                                                                                                        (Pay
                                                                                                                            (Role "NguoiChoiA")
                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                            (Token "" "")
                                                                                                                            (Constant 10000000000)
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                )
                                                                                                                                (When
                                                                                                                                    []
                                                                                                                                    (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                            )
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Deposit
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                    )
                                                                                                                                                    (Pay
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (Pay
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                            (Pay
                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                (Token "" "")
                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                (Pay
                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        Close 
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                Close 
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                        Close 
                                                                                                                                    )
                                                                                                                                )
                                                                                                                            )
                                                                                                                        )]
                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                    Close 
                                                                                                                )]
                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                            Close 
                                                                                                        ), Case
                                                                                                        (Choice
                                                                                                            (ChoiceId
                                                                                                                "NguoiChoiC"
                                                                                                                (Role "NguoiChoiC")
                                                                                                            )
                                                                                                            [Bound 1 1]
                                                                                                        )
                                                                                                        (When
                                                                                                            [Case
                                                                                                                (Deposit
                                                                                                                    (Role "NguoiChoiA")
                                                                                                                    (Role "NguoiChoiA")
                                                                                                                    (Token "" "")
                                                                                                                    (Constant 10000000000)
                                                                                                                )
                                                                                                                (When
                                                                                                                    [Case
                                                                                                                        (Deposit
                                                                                                                            (Role "NguoiChoiB")
                                                                                                                            (Role "NguoiChoiB")
                                                                                                                            (Token "" "")
                                                                                                                            (SubValue
                                                                                                                                (Constant 10000000000)
                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            )
                                                                                                                        )
                                                                                                                        (Pay
                                                                                                                            (Role "NguoiChoiA")
                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                            (Token "" "")
                                                                                                                            (Constant 10000000000)
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                )
                                                                                                                                (When
                                                                                                                                    []
                                                                                                                                    (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                            )
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Deposit
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                    )
                                                                                                                                                    (Pay
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (Pay
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                            (Pay
                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                (Token "" "")
                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                (Pay
                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        Close 
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                Close 
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                        Close 
                                                                                                                                    )
                                                                                                                                )
                                                                                                                            )
                                                                                                                        )]
                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                    Close 
                                                                                                                )]
                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                            Close 
                                                                                                        )]
                                                                                                    (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Choice
                                                                                                                (ChoiceId
                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                    (Address "AddressOracle")
                                                                                                                )
                                                                                                                [Bound 20 30]
                                                                                                            )
                                                                                                            (Let
                                                                                                                "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                (SubValue
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                    (DivValue
                                                                                                                        (MulValue
                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            (ChoiceValue
                                                                                                                                (ChoiceId
                                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                    (Address "AddressOracle")
                                                                                                                                ))
                                                                                                                        )
                                                                                                                        (Constant 100)
                                                                                                                    )
                                                                                                                )
                                                                                                                (Let
                                                                                                                    "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiB"
                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            ), Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiC"
                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            )]
                                                                                                                        (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                        Close 
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                        Close 
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )]
                                                                                    (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                    Close 
                                                                                )
                                                                            )
                                                                        )
                                                                    )]
                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang1")
                                                                Close 
                                                            )]
                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang1")
                                                        Close 
                                                    ), Case
                                                    (Choice
                                                        (ChoiceId
                                                            "NguoiChoiB"
                                                            (Address "NguoiChoiB")
                                                        )
                                                        [Bound 1 1]
                                                    )
                                                    (When
                                                        [Case
                                                            (Deposit
                                                                (Address "NguoiChoiA")
                                                                (Address "NguoiChoiA")
                                                                (Token "" "")
                                                                (SubValue
                                                                    (Constant 10000000000)
                                                                    (UseValue "GiaKhoiDiem_Thang1")
                                                                )
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Address "NguoiChoiC")
                                                                        (Address "NguoiChoiC")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem_Thang1")
                                                                        )
                                                                    )
                                                                    (Pay
                                                                        (Address "NguoiChoiA")
                                                                        (Account (Address "NguoiChoiB"))
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem_Thang1")
                                                                        )
                                                                        (Pay
                                                                            (Address "NguoiChoiC")
                                                                            (Account (Address "NguoiChoiB"))
                                                                            (Token "" "")
                                                                            (SubValue
                                                                                (Constant 10000000000)
                                                                                (UseValue "GiaKhoiDiem_Thang1")
                                                                            )
                                                                            (When
                                                                                []
                                                                                (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                (When
                                                                                    [Case
                                                                                        (Choice
                                                                                            (ChoiceId
                                                                                                "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                (Address "AddressOracle")
                                                                                            )
                                                                                            [Bound 25 30]
                                                                                        )
                                                                                        (Let
                                                                                            "GiaKhoiDiem_Thang2"
                                                                                            (DivValue
                                                                                                (MulValue
                                                                                                    (Constant 10000000000)
                                                                                                    (ChoiceValue
                                                                                                        (ChoiceId
                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                            (Address "AddressOracle")
                                                                                                        ))
                                                                                                )
                                                                                                (Constant 100)
                                                                                            )
                                                                                            (Let
                                                                                                "GiaKhoiDiem_Thang2"
                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                (When
                                                                                                    [Case
                                                                                                        (Choice
                                                                                                            (ChoiceId
                                                                                                                "NguoiChoiA"
                                                                                                                (Role "NguoiChoiA")
                                                                                                            )
                                                                                                            [Bound 1 1]
                                                                                                        )
                                                                                                        (When
                                                                                                            [Case
                                                                                                                (Deposit
                                                                                                                    (Role "NguoiChoiB")
                                                                                                                    (Role "NguoiChoiB")
                                                                                                                    (Token "" "")
                                                                                                                    (Constant 10000000000)
                                                                                                                )
                                                                                                                (When
                                                                                                                    [Case
                                                                                                                        (Deposit
                                                                                                                            (Role "NguoiChoiC")
                                                                                                                            (Role "NguoiChoiC")
                                                                                                                            (Token "" "")
                                                                                                                            (SubValue
                                                                                                                                (Constant 10000000000)
                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            )
                                                                                                                        )
                                                                                                                        (Pay
                                                                                                                            (Role "NguoiChoiB")
                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                            (Token "" "")
                                                                                                                            (Constant 10000000000)
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                )
                                                                                                                                (When
                                                                                                                                    []
                                                                                                                                    (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                            )
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Deposit
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                    )
                                                                                                                                                    (Pay
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (Pay
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                            (Pay
                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                (Token "" "")
                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                (Pay
                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        Close 
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                Close 
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                        Close 
                                                                                                                                    )
                                                                                                                                )
                                                                                                                            )
                                                                                                                        )]
                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                    Close 
                                                                                                                )]
                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                            Close 
                                                                                                        ), Case
                                                                                                        (Choice
                                                                                                            (ChoiceId
                                                                                                                "NguoiChoiC"
                                                                                                                (Role "NguoiChoiC")
                                                                                                            )
                                                                                                            [Bound 1 1]
                                                                                                        )
                                                                                                        (When
                                                                                                            [Case
                                                                                                                (Deposit
                                                                                                                    (Role "NguoiChoiB")
                                                                                                                    (Role "NguoiChoiB")
                                                                                                                    (Token "" "")
                                                                                                                    (Constant 10000000000)
                                                                                                                )
                                                                                                                (When
                                                                                                                    [Case
                                                                                                                        (Deposit
                                                                                                                            (Role "NguoiChoiA")
                                                                                                                            (Role "NguoiChoiA")
                                                                                                                            (Token "" "")
                                                                                                                            (SubValue
                                                                                                                                (Constant 10000000000)
                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            )
                                                                                                                        )
                                                                                                                        (Pay
                                                                                                                            (Role "NguoiChoiB")
                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                            (Token "" "")
                                                                                                                            (Constant 10000000000)
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                )
                                                                                                                                (When
                                                                                                                                    []
                                                                                                                                    (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                            )
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Deposit
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                    )
                                                                                                                                                    (Pay
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (Pay
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                            (Pay
                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                (Token "" "")
                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                (Pay
                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        Close 
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                Close 
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                        Close 
                                                                                                                                    )
                                                                                                                                )
                                                                                                                            )
                                                                                                                        )]
                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                    Close 
                                                                                                                )]
                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                            Close 
                                                                                                        )]
                                                                                                    (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Choice
                                                                                                                (ChoiceId
                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                    (Address "AddressOracle")
                                                                                                                )
                                                                                                                [Bound 20 30]
                                                                                                            )
                                                                                                            (Let
                                                                                                                "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                (SubValue
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                    (DivValue
                                                                                                                        (MulValue
                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            (ChoiceValue
                                                                                                                                (ChoiceId
                                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                    (Address "AddressOracle")
                                                                                                                                ))
                                                                                                                        )
                                                                                                                        (Constant 100)
                                                                                                                    )
                                                                                                                )
                                                                                                                (Let
                                                                                                                    "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiA"
                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            ), Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiC"
                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            )]
                                                                                                                        (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                        Close 
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                        Close 
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )]
                                                                                    (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                    Close 
                                                                                )
                                                                            )
                                                                        )
                                                                    )]
                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang1")
                                                                Close 
                                                            )]
                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang1")
                                                        Close 
                                                    ), Case
                                                    (Choice
                                                        (ChoiceId
                                                            "NguoiChoiC"
                                                            (Address "NguoiChoiC")
                                                        )
                                                        [Bound 1 1]
                                                    )
                                                    (When
                                                        [Case
                                                            (Deposit
                                                                (Address "NguoiChoiA")
                                                                (Address "NguoiChoiA")
                                                                (Token "" "")
                                                                (SubValue
                                                                    (Constant 10000000000)
                                                                    (UseValue "GiaKhoiDiem_Thang1")
                                                                )
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Address "NguoiChoiB")
                                                                        (Address "NguoiChoiB")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem_Thang1")
                                                                        )
                                                                    )
                                                                    (Pay
                                                                        (Address "NguoiChoiA")
                                                                        (Account (Address "NguoiChoiC"))
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 10000000000)
                                                                            (UseValue "GiaKhoiDiem_Thang1")
                                                                        )
                                                                        (Pay
                                                                            (Address "NguoiChoiB")
                                                                            (Account (Address "NguoiChoiC"))
                                                                            (Token "" "")
                                                                            (SubValue
                                                                                (Constant 10000000000)
                                                                                (UseValue "GiaKhoiDiem_Thang1")
                                                                            )
                                                                            (When
                                                                                []
                                                                                (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                (When
                                                                                    [Case
                                                                                        (Choice
                                                                                            (ChoiceId
                                                                                                "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                (Address "AddressOracle")
                                                                                            )
                                                                                            [Bound 25 30]
                                                                                        )
                                                                                        (Let
                                                                                            "GiaKhoiDiem_Thang2"
                                                                                            (DivValue
                                                                                                (MulValue
                                                                                                    (Constant 10000000000)
                                                                                                    (ChoiceValue
                                                                                                        (ChoiceId
                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                            (Address "AddressOracle")
                                                                                                        ))
                                                                                                )
                                                                                                (Constant 100)
                                                                                            )
                                                                                            (Let
                                                                                                "GiaKhoiDiem_Thang2"
                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                (When
                                                                                                    [Case
                                                                                                        (Choice
                                                                                                            (ChoiceId
                                                                                                                "NguoiChoiA"
                                                                                                                (Role "NguoiChoiA")
                                                                                                            )
                                                                                                            [Bound 1 1]
                                                                                                        )
                                                                                                        (When
                                                                                                            [Case
                                                                                                                (Deposit
                                                                                                                    (Role "NguoiChoiC")
                                                                                                                    (Role "NguoiChoiC")
                                                                                                                    (Token "" "")
                                                                                                                    (Constant 10000000000)
                                                                                                                )
                                                                                                                (When
                                                                                                                    [Case
                                                                                                                        (Deposit
                                                                                                                            (Role "NguoiChoiB")
                                                                                                                            (Role "NguoiChoiB")
                                                                                                                            (Token "" "")
                                                                                                                            (SubValue
                                                                                                                                (Constant 10000000000)
                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            )
                                                                                                                        )
                                                                                                                        (Pay
                                                                                                                            (Role "NguoiChoiC")
                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                            (Token "" "")
                                                                                                                            (Constant 10000000000)
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                )
                                                                                                                                (When
                                                                                                                                    []
                                                                                                                                    (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                            )
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Deposit
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                    )
                                                                                                                                                    (Pay
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (Pay
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                            (Pay
                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                (Token "" "")
                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                (Pay
                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        Close 
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                Close 
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                        Close 
                                                                                                                                    )
                                                                                                                                )
                                                                                                                            )
                                                                                                                        )]
                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                    Close 
                                                                                                                )]
                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                            Close 
                                                                                                        ), Case
                                                                                                        (Choice
                                                                                                            (ChoiceId
                                                                                                                "NguoiChoiB"
                                                                                                                (Role "NguoiChoiB")
                                                                                                            )
                                                                                                            [Bound 1 1]
                                                                                                        )
                                                                                                        (When
                                                                                                            [Case
                                                                                                                (Deposit
                                                                                                                    (Role "NguoiChoiC")
                                                                                                                    (Role "NguoiChoiC")
                                                                                                                    (Token "" "")
                                                                                                                    (Constant 10000000000)
                                                                                                                )
                                                                                                                (When
                                                                                                                    [Case
                                                                                                                        (Deposit
                                                                                                                            (Role "NguoiChoiA")
                                                                                                                            (Role "NguoiChoiA")
                                                                                                                            (Token "" "")
                                                                                                                            (SubValue
                                                                                                                                (Constant 10000000000)
                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            )
                                                                                                                        )
                                                                                                                        (Pay
                                                                                                                            (Role "NguoiChoiC")
                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                            (Token "" "")
                                                                                                                            (Constant 10000000000)
                                                                                                                            (Pay
                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                (Token "" "")
                                                                                                                                (SubValue
                                                                                                                                    (Constant 10000000000)
                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                )
                                                                                                                                (When
                                                                                                                                    []
                                                                                                                                    (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                            )
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Deposit
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                    )
                                                                                                                                                    (Pay
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                        (Token "" "")
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (Pay
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                            (Pay
                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                (Token "" "")
                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                (Pay
                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        Close 
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                Close 
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                        Close 
                                                                                                                                    )
                                                                                                                                )
                                                                                                                            )
                                                                                                                        )]
                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                    Close 
                                                                                                                )]
                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                            Close 
                                                                                                        )]
                                                                                                    (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Choice
                                                                                                                (ChoiceId
                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                    (Address "AddressOracle")
                                                                                                                )
                                                                                                                [Bound 20 30]
                                                                                                            )
                                                                                                            (Let
                                                                                                                "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                (SubValue
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                    (DivValue
                                                                                                                        (MulValue
                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                            (ChoiceValue
                                                                                                                                (ChoiceId
                                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                    (Address "AddressOracle")
                                                                                                                                ))
                                                                                                                        )
                                                                                                                        (Constant 100)
                                                                                                                    )
                                                                                                                )
                                                                                                                (Let
                                                                                                                    "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiA"
                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            ), Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiB"
                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            )]
                                                                                                                        (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                        Close 
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                        Close 
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )]
                                                                                    (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                    Close 
                                                                                )
                                                                            )
                                                                        )
                                                                    )]
                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang1")
                                                                Close 
                                                            )]
                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang1")
                                                        Close 
                                                    )]
                                                (TimeParam "2.2.Time_NguoiChoiKeuHui_Thang1_Lan1")
                                                (When
                                                    [Case
                                                        (Choice
                                                            (ChoiceId
                                                                "Oracle_GiaKhoiDiem_Thang1_Lan2"
                                                                (Address "AddressOracle")
                                                            )
                                                            [Bound 20 30]
                                                        )
                                                        (Let
                                                            "GiaKhoiDiem_Thang1_Lan2"
                                                            (SubValue
                                                                (UseValue "GiaKhoiDiem_Thang1")
                                                                (DivValue
                                                                    (MulValue
                                                                        (UseValue "GiaKhoiDiem_Thang1")
                                                                        (ChoiceValue
                                                                            (ChoiceId
                                                                                "Oracle_GiaKhoiDiem_Thang1_Lan2"
                                                                                (Address "AddressOracle")
                                                                            ))
                                                                    )
                                                                    (Constant 100)
                                                                )
                                                            )
                                                            (Let
                                                                "GiaKhoiDiem_Thang1_Lan2"
                                                                (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                (When
                                                                    [Case
                                                                        (Choice
                                                                            (ChoiceId
                                                                                "NguoiChoiA"
                                                                                (Address "NguoiChoiA")
                                                                            )
                                                                            [Bound 1 1]
                                                                        )
                                                                        (When
                                                                            [Case
                                                                                (Deposit
                                                                                    (Address "NguoiChoiB")
                                                                                    (Address "NguoiChoiB")
                                                                                    (Token "" "")
                                                                                    (SubValue
                                                                                        (Constant 10000000000)
                                                                                        (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                    )
                                                                                )
                                                                                (When
                                                                                    [Case
                                                                                        (Deposit
                                                                                            (Address "NguoiChoiC")
                                                                                            (Address "NguoiChoiC")
                                                                                            (Token "" "")
                                                                                            (SubValue
                                                                                                (Constant 10000000000)
                                                                                                (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                            )
                                                                                        )
                                                                                        (Pay
                                                                                            (Address "NguoiChoiB")
                                                                                            (Account (Address "NguoiChoiA"))
                                                                                            (Token "" "")
                                                                                            (SubValue
                                                                                                (Constant 10000000000)
                                                                                                (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                            )
                                                                                            (Pay
                                                                                                (Address "NguoiChoiC")
                                                                                                (Account (Address "NguoiChoiA"))
                                                                                                (Token "" "")
                                                                                                (SubValue
                                                                                                    (Constant 10000000000)
                                                                                                    (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                                )
                                                                                                (When
                                                                                                    []
                                                                                                    (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Choice
                                                                                                                (ChoiceId
                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                    (Address "AddressOracle")
                                                                                                                )
                                                                                                                [Bound 20 30]
                                                                                                            )
                                                                                                            (Let
                                                                                                                "GiaKhoiDiem_Thang2"
                                                                                                                (DivValue
                                                                                                                    (MulValue
                                                                                                                        (Constant 10000000000)
                                                                                                                        (ChoiceValue
                                                                                                                            (ChoiceId
                                                                                                                                "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                (Address "AddressOracle")
                                                                                                                            ))
                                                                                                                    )
                                                                                                                    (Constant 100)
                                                                                                                )
                                                                                                                (Let
                                                                                                                    "GiaKhoiDiem_Thang2"
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiB"
                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            ), Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiC"
                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            )]
                                                                                                                        (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                                        (When
                                                                                                                            [Case
                                                                                                                                (Choice
                                                                                                                                    (ChoiceId
                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                        (Address "AddressOracle")
                                                                                                                                    )
                                                                                                                                    [Bound 20 30]
                                                                                                                                )
                                                                                                                                (Let
                                                                                                                                    "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                    (SubValue
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                        (DivValue
                                                                                                                                            (MulValue
                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                (ChoiceValue
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                        (Address "AddressOracle")
                                                                                                                                                    ))
                                                                                                                                            )
                                                                                                                                            (Constant 100)
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                    (Let
                                                                                                                                        "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                        (When
                                                                                                                                            [Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiB"
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                ), Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiC"
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                )]
                                                                                                                                            (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                                            Close 
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                )]
                                                                                                                            (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                                            Close 
                                                                                                                        )
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                                        Close 
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )]
                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang1")
                                                                                    Close 
                                                                                )]
                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang1")
                                                                            Close 
                                                                        ), Case
                                                                        (Choice
                                                                            (ChoiceId
                                                                                "NguoiChoiB"
                                                                                (Address "NguoiChoiB")
                                                                            )
                                                                            [Bound 1 1]
                                                                        )
                                                                        (When
                                                                            [Case
                                                                                (Deposit
                                                                                    (Address "NguoiChoiA")
                                                                                    (Address "NguoiChoiA")
                                                                                    (Token "" "")
                                                                                    (SubValue
                                                                                        (Constant 10000000000)
                                                                                        (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                    )
                                                                                )
                                                                                (When
                                                                                    [Case
                                                                                        (Deposit
                                                                                            (Address "NguoiChoiC")
                                                                                            (Address "NguoiChoiC")
                                                                                            (Token "" "")
                                                                                            (SubValue
                                                                                                (Constant 10000000000)
                                                                                                (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                            )
                                                                                        )
                                                                                        (Pay
                                                                                            (Address "NguoiChoiA")
                                                                                            (Account (Address "NguoiChoiB"))
                                                                                            (Token "" "")
                                                                                            (SubValue
                                                                                                (Constant 10000000000)
                                                                                                (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                            )
                                                                                            (Pay
                                                                                                (Address "NguoiChoiC")
                                                                                                (Account (Address "NguoiChoiB"))
                                                                                                (Token "" "")
                                                                                                (SubValue
                                                                                                    (Constant 10000000000)
                                                                                                    (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                                )
                                                                                                (When
                                                                                                    []
                                                                                                    (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Choice
                                                                                                                (ChoiceId
                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                    (Address "AddressOracle")
                                                                                                                )
                                                                                                                [Bound 25 30]
                                                                                                            )
                                                                                                            (Let
                                                                                                                "GiaKhoiDiem_Thang2"
                                                                                                                (DivValue
                                                                                                                    (MulValue
                                                                                                                        (Constant 10000000000)
                                                                                                                        (ChoiceValue
                                                                                                                            (ChoiceId
                                                                                                                                "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                (Address "AddressOracle")
                                                                                                                            ))
                                                                                                                    )
                                                                                                                    (Constant 100)
                                                                                                                )
                                                                                                                (Let
                                                                                                                    "GiaKhoiDiem_Thang2"
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiA"
                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            ), Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiC"
                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            )]
                                                                                                                        (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                                        (When
                                                                                                                            [Case
                                                                                                                                (Choice
                                                                                                                                    (ChoiceId
                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                        (Address "AddressOracle")
                                                                                                                                    )
                                                                                                                                    [Bound 20 30]
                                                                                                                                )
                                                                                                                                (Let
                                                                                                                                    "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                    (SubValue
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                        (DivValue
                                                                                                                                            (MulValue
                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                (ChoiceValue
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                        (Address "AddressOracle")
                                                                                                                                                    ))
                                                                                                                                            )
                                                                                                                                            (Constant 100)
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                    (Let
                                                                                                                                        "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                        (When
                                                                                                                                            [Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiA"
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                ), Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiC"
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                )]
                                                                                                                                            (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                                            Close 
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                )]
                                                                                                                            (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                                            Close 
                                                                                                                        )
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                                        Close 
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )]
                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang1")
                                                                                    Close 
                                                                                )]
                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang1")
                                                                            Close 
                                                                        ), Case
                                                                        (Choice
                                                                            (ChoiceId
                                                                                "NguoiChoiC"
                                                                                (Address "NguoiChoiC")
                                                                            )
                                                                            [Bound 1 1]
                                                                        )
                                                                        (When
                                                                            [Case
                                                                                (Deposit
                                                                                    (Address "NguoiChoiA")
                                                                                    (Address "NguoiChoiA")
                                                                                    (Token "" "")
                                                                                    (SubValue
                                                                                        (Constant 10000000000)
                                                                                        (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                    )
                                                                                )
                                                                                (When
                                                                                    [Case
                                                                                        (Deposit
                                                                                            (Address "NguoiChoiB")
                                                                                            (Address "NguoiChoiB")
                                                                                            (Token "" "")
                                                                                            (SubValue
                                                                                                (Constant 10000000000)
                                                                                                (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                            )
                                                                                        )
                                                                                        (Pay
                                                                                            (Address "NguoiChoiA")
                                                                                            (Account (Address "NguoiChoiC"))
                                                                                            (Token "" "")
                                                                                            (SubValue
                                                                                                (Constant 10000000000)
                                                                                                (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                            )
                                                                                            (Pay
                                                                                                (Address "NguoiChoiB")
                                                                                                (Account (Address "NguoiChoiC"))
                                                                                                (Token "" "")
                                                                                                (SubValue
                                                                                                    (Constant 10000000000)
                                                                                                    (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                                )
                                                                                                (When
                                                                                                    []
                                                                                                    (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Choice
                                                                                                                (ChoiceId
                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                    (Address "AddressOracle")
                                                                                                                )
                                                                                                                [Bound 25 30]
                                                                                                            )
                                                                                                            (Let
                                                                                                                "GiaKhoiDiem_Thang2"
                                                                                                                (DivValue
                                                                                                                    (MulValue
                                                                                                                        (Constant 10000000000)
                                                                                                                        (ChoiceValue
                                                                                                                            (ChoiceId
                                                                                                                                "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                (Address "AddressOracle")
                                                                                                                            ))
                                                                                                                    )
                                                                                                                    (Constant 100)
                                                                                                                )
                                                                                                                (Let
                                                                                                                    "GiaKhoiDiem_Thang2"
                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                    (When
                                                                                                                        [Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiA"
                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            ), Case
                                                                                                                            (Choice
                                                                                                                                (ChoiceId
                                                                                                                                    "NguoiChoiB"
                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                )
                                                                                                                                [Bound 1 1]
                                                                                                                            )
                                                                                                                            (When
                                                                                                                                [Case
                                                                                                                                    (Deposit
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                        (Token "" "")
                                                                                                                                        (Constant 10000000000)
                                                                                                                                    )
                                                                                                                                    (When
                                                                                                                                        [Case
                                                                                                                                            (Deposit
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                (Token "" "")
                                                                                                                                                (SubValue
                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                )
                                                                                                                                            )
                                                                                                                                            (Pay
                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                (Token "" "")
                                                                                                                                                (Constant 10000000000)
                                                                                                                                                (Pay
                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                    (Token "" "")
                                                                                                                                                    (SubValue
                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                    )
                                                                                                                                                    (When
                                                                                                                                                        []
                                                                                                                                                        (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                )
                                                                                                                                                                (When
                                                                                                                                                                    [Case
                                                                                                                                                                        (Deposit
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                        )
                                                                                                                                                                        (Pay
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                            (Token "" "")
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (Pay
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                (Pay
                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            Close 
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                )
                                                                                                                                                                            )
                                                                                                                                                                        )]
                                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                    Close 
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                            Close 
                                                                                                                                                        )
                                                                                                                                                    )
                                                                                                                                                )
                                                                                                                                            )]
                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                        Close 
                                                                                                                                    )]
                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                Close 
                                                                                                                            )]
                                                                                                                        (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                                        (When
                                                                                                                            [Case
                                                                                                                                (Choice
                                                                                                                                    (ChoiceId
                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                        (Address "AddressOracle")
                                                                                                                                    )
                                                                                                                                    [Bound 20 30]
                                                                                                                                )
                                                                                                                                (Let
                                                                                                                                    "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                    (SubValue
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                        (DivValue
                                                                                                                                            (MulValue
                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                (ChoiceValue
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                        (Address "AddressOracle")
                                                                                                                                                    ))
                                                                                                                                            )
                                                                                                                                            (Constant 100)
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                    (Let
                                                                                                                                        "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                        (When
                                                                                                                                            [Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiA"
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                ), Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiB"
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                )]
                                                                                                                                            (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                                            Close 
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                )]
                                                                                                                            (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                                            Close 
                                                                                                                        )
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                                        Close 
                                                                                                    )
                                                                                                )
                                                                                            )
                                                                                        )]
                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang1")
                                                                                    Close 
                                                                                )]
                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang1")
                                                                            Close 
                                                                        )]
                                                                    (TimeParam "2.4.Time_NguoiChoiKeuHui_Thang1_Lan2")
                                                                    (When
                                                                        [Case
                                                                            (Choice
                                                                                (ChoiceId
                                                                                    "Oracle_GiaKhoiDiem_Thang1_Lan3"
                                                                                    (Address "AddressOracle")
                                                                                )
                                                                                [Bound 25 30]
                                                                            )
                                                                            (Let
                                                                                "GiaKhoiDiem_Thang1_Lan3"
                                                                                (SubValue
                                                                                    (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                    (DivValue
                                                                                        (MulValue
                                                                                            (UseValue "GiaKhoiDiem_Thang1_Lan2")
                                                                                            (ChoiceValue
                                                                                                (ChoiceId
                                                                                                    "Oracle_GiaKhoiDiem_Thang1_Lan3"
                                                                                                    (Address "AddressOracle")
                                                                                                ))
                                                                                        )
                                                                                        (Constant 100)
                                                                                    )
                                                                                )
                                                                                (Let
                                                                                    "GiaKhoiDiem_Thang1_Lan3"
                                                                                    (UseValue "GiaKhoiDiem_Thang1_Lan3")
                                                                                    (When
                                                                                        [Case
                                                                                            (Choice
                                                                                                (ChoiceId
                                                                                                    "NguoiChoiA"
                                                                                                    (Address "NguoiChoiA")
                                                                                                )
                                                                                                [Bound 1 1]
                                                                                            )
                                                                                            (When
                                                                                                [Case
                                                                                                    (Deposit
                                                                                                        (Address "NguoiChoiB")
                                                                                                        (Address "NguoiChoiB")
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                        )
                                                                                                    )
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Deposit
                                                                                                                (Address "NguoiChoiC")
                                                                                                                (Address "NguoiChoiC")
                                                                                                                (Token "" "")
                                                                                                                (SubValue
                                                                                                                    (Constant 10000000000)
                                                                                                                    (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                )
                                                                                                            )
                                                                                                            (Pay
                                                                                                                (Address "NguoiChoiB")
                                                                                                                (Account (Address "NguoiChoiA"))
                                                                                                                (Token "" "")
                                                                                                                (SubValue
                                                                                                                    (Constant 10000000000)
                                                                                                                    (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                )
                                                                                                                (Pay
                                                                                                                    (Address "NguoiChoiC")
                                                                                                                    (Account (Address "NguoiChoiA"))
                                                                                                                    (Token "" "")
                                                                                                                    (SubValue
                                                                                                                        (Constant 10000000000)
                                                                                                                        (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                    )
                                                                                                                    (When
                                                                                                                        []
                                                                                                                        (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                                                        (When
                                                                                                                            [Case
                                                                                                                                (Choice
                                                                                                                                    (ChoiceId
                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                        (Address "AddressOracle")
                                                                                                                                    )
                                                                                                                                    [Bound 25 30]
                                                                                                                                )
                                                                                                                                (Let
                                                                                                                                    "GiaKhoiDiem_Thang2"
                                                                                                                                    (DivValue
                                                                                                                                        (MulValue
                                                                                                                                            (Constant 10000000000)
                                                                                                                                            (ChoiceValue
                                                                                                                                                (ChoiceId
                                                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                                    (Address "AddressOracle")
                                                                                                                                                ))
                                                                                                                                        )
                                                                                                                                        (Constant 100)
                                                                                                                                    )
                                                                                                                                    (Let
                                                                                                                                        "GiaKhoiDiem_Thang2"
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                        (When
                                                                                                                                            [Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiB"
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                ), Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiC"
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                )]
                                                                                                                                            (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Choice
                                                                                                                                                        (ChoiceId
                                                                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                            (Address "AddressOracle")
                                                                                                                                                        )
                                                                                                                                                        [Bound 20 30]
                                                                                                                                                    )
                                                                                                                                                    (Let
                                                                                                                                                        "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                        (SubValue
                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                            (DivValue
                                                                                                                                                                (MulValue
                                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    (ChoiceValue
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                                            (Address "AddressOracle")
                                                                                                                                                                        ))
                                                                                                                                                                )
                                                                                                                                                                (Constant 100)
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                        (Let
                                                                                                                                                            "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                            (When
                                                                                                                                                                [Case
                                                                                                                                                                    (Choice
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "NguoiChoiB"
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                        )
                                                                                                                                                                        [Bound 1 1]
                                                                                                                                                                    )
                                                                                                                                                                    (When
                                                                                                                                                                        [Case
                                                                                                                                                                            (Deposit
                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                            )
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (SubValue
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (SubValue
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                            )
                                                                                                                                                                                            (When
                                                                                                                                                                                                []
                                                                                                                                                                                                (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                                                (When
                                                                                                                                                                                                    [Case
                                                                                                                                                                                                        (Deposit
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (When
                                                                                                                                                                                                            [Case
                                                                                                                                                                                                                (Deposit
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                                    Close 
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                )]
                                                                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                                            Close 
                                                                                                                                                                                                        )]
                                                                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                                    Close 
                                                                                                                                                                                                )
                                                                                                                                                                                            )
                                                                                                                                                                                        )
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                                                Close 
                                                                                                                                                                            )]
                                                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                                        Close 
                                                                                                                                                                    ), Case
                                                                                                                                                                    (Choice
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "NguoiChoiC"
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                        )
                                                                                                                                                                        [Bound 1 1]
                                                                                                                                                                    )
                                                                                                                                                                    (When
                                                                                                                                                                        [Case
                                                                                                                                                                            (Deposit
                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                            )
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (SubValue
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (SubValue
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                            )
                                                                                                                                                                                            (When
                                                                                                                                                                                                []
                                                                                                                                                                                                (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                                                (When
                                                                                                                                                                                                    [Case
                                                                                                                                                                                                        (Deposit
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (When
                                                                                                                                                                                                            [Case
                                                                                                                                                                                                                (Deposit
                                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                                    Close 
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                )]
                                                                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                                            Close 
                                                                                                                                                                                                        )]
                                                                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                                    Close 
                                                                                                                                                                                                )
                                                                                                                                                                                            )
                                                                                                                                                                                        )
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                                                Close 
                                                                                                                                                                            )]
                                                                                                                                                                        (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                                        Close 
                                                                                                                                                                    )]
                                                                                                                                                                (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                                                                Close 
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                Close 
                                                                                                                                            )
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                )]
                                                                                                                            (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                                                            Close 
                                                                                                                        )
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang1")
                                                                                                        Close 
                                                                                                    )]
                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang1")
                                                                                                Close 
                                                                                            ), Case
                                                                                            (Choice
                                                                                                (ChoiceId
                                                                                                    "NguoiChoiB"
                                                                                                    (Address "NguoiChoiB")
                                                                                                )
                                                                                                [Bound 1 1]
                                                                                            )
                                                                                            (When
                                                                                                [Case
                                                                                                    (Deposit
                                                                                                        (Address "NguoiChoiA")
                                                                                                        (Address "NguoiChoiA")
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                        )
                                                                                                    )
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Deposit
                                                                                                                (Address "NguoiChoiC")
                                                                                                                (Address "NguoiChoiC")
                                                                                                                (Token "" "")
                                                                                                                (SubValue
                                                                                                                    (Constant 10000000000)
                                                                                                                    (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                )
                                                                                                            )
                                                                                                            (Pay
                                                                                                                (Address "NguoiChoiA")
                                                                                                                (Account (Address "NguoiChoiB"))
                                                                                                                (Token "" "")
                                                                                                                (SubValue
                                                                                                                    (Constant 10000000000)
                                                                                                                    (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                )
                                                                                                                (Pay
                                                                                                                    (Address "NguoiChoiC")
                                                                                                                    (Account (Address "NguoiChoiB"))
                                                                                                                    (Token "" "")
                                                                                                                    (SubValue
                                                                                                                        (Constant 10000000000)
                                                                                                                        (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                    )
                                                                                                                    (When
                                                                                                                        []
                                                                                                                        (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                                                        (When
                                                                                                                            [Case
                                                                                                                                (Choice
                                                                                                                                    (ChoiceId
                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                        (Address "AddressOracle")
                                                                                                                                    )
                                                                                                                                    [Bound 25 30]
                                                                                                                                )
                                                                                                                                (Let
                                                                                                                                    "GiaKhoiDiem_Thang2"
                                                                                                                                    (DivValue
                                                                                                                                        (MulValue
                                                                                                                                            (Constant 10000000000)
                                                                                                                                            (ChoiceValue
                                                                                                                                                (ChoiceId
                                                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                                    (Address "AddressOracle")
                                                                                                                                                ))
                                                                                                                                        )
                                                                                                                                        (Constant 100)
                                                                                                                                    )
                                                                                                                                    (Let
                                                                                                                                        "GiaKhoiDiem_Thang2"
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                        (When
                                                                                                                                            [Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiA"
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                ), Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiC"
                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                )]
                                                                                                                                            (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Choice
                                                                                                                                                        (ChoiceId
                                                                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                            (Address "AddressOracle")
                                                                                                                                                        )
                                                                                                                                                        [Bound 20 30]
                                                                                                                                                    )
                                                                                                                                                    (Let
                                                                                                                                                        "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                        (SubValue
                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                            (DivValue
                                                                                                                                                                (MulValue
                                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    (ChoiceValue
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                                            (Address "AddressOracle")
                                                                                                                                                                        ))
                                                                                                                                                                )
                                                                                                                                                                (Constant 100)
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                        (Let
                                                                                                                                                            "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                            (When
                                                                                                                                                                [Case
                                                                                                                                                                    (Choice
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "NguoiChoiA"
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                        )
                                                                                                                                                                        [Bound 1 1]
                                                                                                                                                                    )
                                                                                                                                                                    (When
                                                                                                                                                                        [Case
                                                                                                                                                                            (Deposit
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                            )
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (SubValue
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (SubValue
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                            )
                                                                                                                                                                                            (When
                                                                                                                                                                                                []
                                                                                                                                                                                                (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                                                (When
                                                                                                                                                                                                    [Case
                                                                                                                                                                                                        (Deposit
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (When
                                                                                                                                                                                                            [Case
                                                                                                                                                                                                                (Deposit
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                                    Close 
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                )]
                                                                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                                            Close 
                                                                                                                                                                                                        )]
                                                                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                                    Close 
                                                                                                                                                                                                )
                                                                                                                                                                                            )
                                                                                                                                                                                        )
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                                                Close 
                                                                                                                                                                            )]
                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                                        Close 
                                                                                                                                                                    ), Case
                                                                                                                                                                    (Choice
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "NguoiChoiC"
                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                        )
                                                                                                                                                                        [Bound 1 1]
                                                                                                                                                                    )
                                                                                                                                                                    (When
                                                                                                                                                                        [Case
                                                                                                                                                                            (Deposit
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                            )
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (SubValue
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                        (Party (Address "NguoiChoiC"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                            (Party (Address "NguoiChoiC"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (SubValue
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                            )
                                                                                                                                                                                            (When
                                                                                                                                                                                                []
                                                                                                                                                                                                (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                                                (When
                                                                                                                                                                                                    [Case
                                                                                                                                                                                                        (Deposit
                                                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (When
                                                                                                                                                                                                            [Case
                                                                                                                                                                                                                (Deposit
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                                    Close 
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                )]
                                                                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                                            Close 
                                                                                                                                                                                                        )]
                                                                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                                    Close 
                                                                                                                                                                                                )
                                                                                                                                                                                            )
                                                                                                                                                                                        )
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                                                Close 
                                                                                                                                                                            )]
                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                                        Close 
                                                                                                                                                                    )]
                                                                                                                                                                (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                                                                Close 
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                Close 
                                                                                                                                            )
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                )]
                                                                                                                            (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                                                            Close 
                                                                                                                        )
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang1")
                                                                                                        Close 
                                                                                                    )]
                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang1")
                                                                                                Close 
                                                                                            ), Case
                                                                                            (Choice
                                                                                                (ChoiceId
                                                                                                    "NguoiChoiC"
                                                                                                    (Address "NguoiChoiC")
                                                                                                )
                                                                                                [Bound 1 1]
                                                                                            )
                                                                                            (When
                                                                                                [Case
                                                                                                    (Deposit
                                                                                                        (Address "NguoiChoiA")
                                                                                                        (Address "NguoiChoiA")
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 10000000000)
                                                                                                            (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                        )
                                                                                                    )
                                                                                                    (When
                                                                                                        [Case
                                                                                                            (Deposit
                                                                                                                (Address "NguoiChoiB")
                                                                                                                (Address "NguoiChoiB")
                                                                                                                (Token "" "")
                                                                                                                (SubValue
                                                                                                                    (Constant 10000000000)
                                                                                                                    (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                )
                                                                                                            )
                                                                                                            (Pay
                                                                                                                (Address "NguoiChoiA")
                                                                                                                (Account (Address "NguoiChoiC"))
                                                                                                                (Token "" "")
                                                                                                                (SubValue
                                                                                                                    (Constant 10000000000)
                                                                                                                    (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                )
                                                                                                                (Pay
                                                                                                                    (Address "NguoiChoiB")
                                                                                                                    (Account (Address "NguoiChoiC"))
                                                                                                                    (Token "" "")
                                                                                                                    (SubValue
                                                                                                                        (Constant 10000000000)
                                                                                                                        (UseValue "Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                                                                    )
                                                                                                                    (When
                                                                                                                        []
                                                                                                                        (TimeParam "3.0.Time_Thang2_BatDau")
                                                                                                                        (When
                                                                                                                            [Case
                                                                                                                                (Choice
                                                                                                                                    (ChoiceId
                                                                                                                                        "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                        (Address "AddressOracle")
                                                                                                                                    )
                                                                                                                                    [Bound 25 30]
                                                                                                                                )
                                                                                                                                (Let
                                                                                                                                    "GiaKhoiDiem_Thang2"
                                                                                                                                    (DivValue
                                                                                                                                        (MulValue
                                                                                                                                            (Constant 10000000000)
                                                                                                                                            (ChoiceValue
                                                                                                                                                (ChoiceId
                                                                                                                                                    "Oracle_GiaKhoiDiem_Thang2_Lan1"
                                                                                                                                                    (Address "AddressOracle")
                                                                                                                                                ))
                                                                                                                                        )
                                                                                                                                        (Constant 100)
                                                                                                                                    )
                                                                                                                                    (Let
                                                                                                                                        "GiaKhoiDiem_Thang2"
                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                        (When
                                                                                                                                            [Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiA"
                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiA")
                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                ), Case
                                                                                                                                                (Choice
                                                                                                                                                    (ChoiceId
                                                                                                                                                        "NguoiChoiB"
                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                    )
                                                                                                                                                    [Bound 1 1]
                                                                                                                                                )
                                                                                                                                                (When
                                                                                                                                                    [Case
                                                                                                                                                        (Deposit
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                            (Token "" "")
                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                        )
                                                                                                                                                        (When
                                                                                                                                                            [Case
                                                                                                                                                                (Deposit
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (SubValue
                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                        (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    )
                                                                                                                                                                )
                                                                                                                                                                (Pay
                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                    (Token "" "")
                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                    (Pay
                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                        (Token "" "")
                                                                                                                                                                        (SubValue
                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                        )
                                                                                                                                                                        (When
                                                                                                                                                                            []
                                                                                                                                                                            (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                    )
                                                                                                                                                                                    (When
                                                                                                                                                                                        [Case
                                                                                                                                                                                            (Deposit
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                            )
                                                                                                                                                                                            (Pay
                                                                                                                                                                                                (Role "NguoiChoiB")
                                                                                                                                                                                                (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (Pay
                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                        (Address "QuyCocHui")
                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                Close 
                                                                                                                                                                                                            )
                                                                                                                                                                                                        )
                                                                                                                                                                                                    )
                                                                                                                                                                                                )
                                                                                                                                                                                            )]
                                                                                                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                        Close 
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                Close 
                                                                                                                                                                            )
                                                                                                                                                                        )
                                                                                                                                                                    )
                                                                                                                                                                )]
                                                                                                                                                            (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                            Close 
                                                                                                                                                        )]
                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                    Close 
                                                                                                                                                )]
                                                                                                                                            (TimeParam "3.2.Time_NguoiChoiKeuHui_Thang2_Lan1")
                                                                                                                                            (When
                                                                                                                                                [Case
                                                                                                                                                    (Choice
                                                                                                                                                        (ChoiceId
                                                                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                            (Address "AddressOracle")
                                                                                                                                                        )
                                                                                                                                                        [Bound 20 30]
                                                                                                                                                    )
                                                                                                                                                    (Let
                                                                                                                                                        "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                        (SubValue
                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                            (DivValue
                                                                                                                                                                (MulValue
                                                                                                                                                                    (UseValue "GiaKhoiDiem_Thang2")
                                                                                                                                                                    (ChoiceValue
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "Oracle_GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                                            (Address "AddressOracle")
                                                                                                                                                                        ))
                                                                                                                                                                )
                                                                                                                                                                (Constant 100)
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                        (Let
                                                                                                                                                            "GiaKhoiDiem_Thang2_Lan2"
                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                            (When
                                                                                                                                                                [Case
                                                                                                                                                                    (Choice
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "NguoiChoiA"
                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                        )
                                                                                                                                                                        [Bound 1 1]
                                                                                                                                                                    )
                                                                                                                                                                    (When
                                                                                                                                                                        [Case
                                                                                                                                                                            (Deposit
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                            )
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                        (Role "NguoiChoiB")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (SubValue
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (SubValue
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                            )
                                                                                                                                                                                            (When
                                                                                                                                                                                                []
                                                                                                                                                                                                (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                                                (When
                                                                                                                                                                                                    [Case
                                                                                                                                                                                                        (Deposit
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (When
                                                                                                                                                                                                            [Case
                                                                                                                                                                                                                (Deposit
                                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                                    (Role "NguoiChoiC")
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                    (Role "NguoiChoiA")
                                                                                                                                                                                                                    (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                                    Close 
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                )]
                                                                                                                                                                                                            (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                                            Close 
                                                                                                                                                                                                        )]
                                                                                                                                                                                                    (TimeParam "Time_NguoiChoiA_DongHui_Thang3")
                                                                                                                                                                                                    Close 
                                                                                                                                                                                                )
                                                                                                                                                                                            )
                                                                                                                                                                                        )
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiB_DongHui_Thang2")
                                                                                                                                                                                Close 
                                                                                                                                                                            )]
                                                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                                        Close 
                                                                                                                                                                    ), Case
                                                                                                                                                                    (Choice
                                                                                                                                                                        (ChoiceId
                                                                                                                                                                            "NguoiChoiB"
                                                                                                                                                                            (Role "NguoiChoiB")
                                                                                                                                                                        )
                                                                                                                                                                        [Bound 1 1]
                                                                                                                                                                    )
                                                                                                                                                                    (When
                                                                                                                                                                        [Case
                                                                                                                                                                            (Deposit
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Role "NguoiChoiC")
                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                            )
                                                                                                                                                                            (When
                                                                                                                                                                                [Case
                                                                                                                                                                                    (Deposit
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Role "NguoiChoiA")
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (SubValue
                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                            (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                        )
                                                                                                                                                                                    )
                                                                                                                                                                                    (Pay
                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                        (Party (Address "NguoiChoiB"))
                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                        (Pay
                                                                                                                                                                                            (Role "NguoiChoiA")
                                                                                                                                                                                            (Party (Address "NguoiChoiB"))
                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                            (SubValue
                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                (UseValue "GiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                                                            )
                                                                                                                                                                                            (When
                                                                                                                                                                                                []
                                                                                                                                                                                                (TimeParam "4.0.Time_Thang3_BatDau")
                                                                                                                                                                                                (When
                                                                                                                                                                                                    [Case
                                                                                                                                                                                                        (Deposit
                                                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                                                            (Role "NguoiChoiC")
                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                        )
                                                                                                                                                                                                        (When
                                                                                                                                                                                                            [Case
                                                                                                                                                                                                                (Deposit
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                )
                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                    (Role "NguoiChoiB")
                                                                                                                                                                                                                    (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                    (Pay
                                                                                                                                                                                                                        (Role "NguoiChoiC")
                                                                                                                                                                                                                        (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                        (Token "" "")
                                                                                                                                                                                                                        (Constant 10000000000)
                                                                                                                                                                                                                        (Pay
                                                                                                                                                                                                                            (Address "QuyCocHui")
                                                                                                                                                                                                                            (Party (Address "NguoiChoiA"))
                                                                                                                                                                                                                            (Token "" "")
                                                                                                                                                                                                                            (Constant 10000000000)
                                                                                                                                                                                                                            (Pay
                                                                                                                                                                                                                                (Address "QuyCocHui")
                                                                                                                                                                                                                                (Party (Address "NguoiChoiB"))
                                                                                                                                                                                                                                (Token "" "")
                                                                                                                                                                                                                                (Constant 10000000000)
                                                                                                                                                                                                                                (Pay
                                                                                                                                                                                                                                    (Address "QuyCocHui")
                                                                                                                                                                                                                                    (Party (Address "NguoiChoiC"))
                                                                                                                                                                                                                                    (Token "" "")
                                                                                                                                                                                                                                    (Constant 10000000000)
                                                                                                                                                                                                                                    Close 
                                                                                                                                                                                                                                )
                                                                                                                                                                                                                            )
                                                                                                                                                                                                                        )
                                                                                                                                                                                                                    )
                                                                                                                                                                                                                )]
                                                                                                                                                                                                            (TimeParam "Time_NguoiChoiB_DongHui_Thang3")
                                                                                                                                                                                                            Close 
                                                                                                                                                                                                        )]
                                                                                                                                                                                                    (TimeParam "Time_NguoiChoiC_DongHui_Thang3")
                                                                                                                                                                                                    Close 
                                                                                                                                                                                                )
                                                                                                                                                                                            )
                                                                                                                                                                                        )
                                                                                                                                                                                    )]
                                                                                                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang2")
                                                                                                                                                                                Close 
                                                                                                                                                                            )]
                                                                                                                                                                        (TimeParam "Time_NguoiChoiC_DongHui_Thang2")
                                                                                                                                                                        Close 
                                                                                                                                                                    )]
                                                                                                                                                                (TimeParam "3.4.Time_NguoiChoiKeuHui_Thang2_Lan2")
                                                                                                                                                                Close 
                                                                                                                                                            )
                                                                                                                                                        )
                                                                                                                                                    )]
                                                                                                                                                (TimeParam "3.3.Time_OracleBaoGiaKhoiDiem_Thang2_Lan2")
                                                                                                                                                Close 
                                                                                                                                            )
                                                                                                                                        )
                                                                                                                                    )
                                                                                                                                )]
                                                                                                                            (TimeParam "3.1.Time_OracleBaoGiaKhoiDiem_Thang2_Lan1")
                                                                                                                            Close 
                                                                                                                        )
                                                                                                                    )
                                                                                                                )
                                                                                                            )]
                                                                                                        (TimeParam "Time_NguoiChoiB_DongHui_Thang1")
                                                                                                        Close 
                                                                                                    )]
                                                                                                (TimeParam "Time_NguoiChoiA_DongHui_Thang1")
                                                                                                Close 
                                                                                            )]
                                                                                        (TimeParam "2.6.Time_NguoiChoiKeuHui_Thang1_Lan3")
                                                                                        Close 
                                                                                    )
                                                                                )
                                                                            )]
                                                                        (TimeParam "2.5.Time_Oracle_GiaKhoiDiem_Thang1_Lan3")
                                                                        Close 
                                                                    )
                                                                )
                                                            )
                                                        )]
                                                    (TimeParam "2.3.Time_OracleBaoGiaKhoiDiem_Thang1_Lan2")
                                                    Close 
                                                )
                                            )
                                        )
                                    )]
                                (TimeParam "2.1.Time_OracleBaoGiaKhoiDiem_Thang1_Lan1")
                                Close 
                            )
                        )]
                    (TimeParam "1.3.Time_NguoiChoiC_CocHui")
                    (Pay
                        (Address "QuyCocHui")
                        (Party (Address "NguoiChoiA"))
                        (Token "" "")
                        (Constant 10000000000)
                        (Pay
                            (Address "QuyCocHui")
                            (Party (Address "NguoiChoiB"))
                            (Token "" "")
                            (Constant 10000000000)
                            Close 
                        )
                    )
                )]
            (TimeParam "1.2.Time_NguoiChoiB_CocHui")
            (Pay
                (Address "QuyCocHui")
                (Party (Address "NguoiChoiA"))
                (Token "" "")
                (Constant 10000000000)
                Close 
            )
        )]
    (TimeParam "1.1.Time_NguoiChoiA_CocHui")
    Close 
