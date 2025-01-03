When
    [Case
        (Deposit
            (Address "QuyCocHui")
            (Address "NguoiChoiA")
            (Token "" "")
            (Constant 3000000000)
        )
        (When
            [Case
                (Deposit
                    (Address "QuyCocHui")
                    (Address "NguoiChoiB")
                    (Token "" "")
                    (Constant 3000000000)
                )
                (When
                    [Case
                        (Deposit
                            (Address "QuyCocHui")
                            (Address "NguoiChoiC")
                            (Token "" "")
                            (Constant 3000000000)
                        )
                        (When
                            [Case
                                (Choice
                                    (ChoiceId
                                        "OracleChonGiaKhoiDiem"
                                        (Address "AddressOracle")
                                    )
                                    [Bound 40 50]
                                )
                                (Let
                                    "GiaKhoiDiem"
                                    (DivValue
                                        (MulValue
                                            (Constant 3000000000)
                                            (ChoiceValue
                                                (ChoiceId
                                                    "OracleChonGiaKhoiDiem"
                                                    (Address "AddressOracle")
                                                ))
                                        )
                                        (Constant 100)
                                    )
                                    (When
                                        []
                                        (TimeParam "TimeDauGiaLan1")
                                        (Let
                                            "GiạKhoiDiem"
                                            (UseValue "GiaKhoiDiem")
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
                                                                    (Constant 3000000000)
                                                                    (UseValue "GiaKhoiDiem")
                                                                )
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Address "NguoiChoiC")
                                                                        (Address "NguoiChoiC")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 3000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                    )
                                                                    (Pay
                                                                        (Address "NguoiChoiB")
                                                                        (Account (Address "NguoiChoiA"))
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 3000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                        (Pay
                                                                            (Address "NguoiChoiC")
                                                                            (Account (Address "NguoiChoiA"))
                                                                            (Token "" "")
                                                                            (SubValue
                                                                                (Constant 3000000000)
                                                                                (UseValue "GiaKhoiDiem")
                                                                            )
                                                                            Close 
                                                                        )
                                                                    )]
                                                                (TimeParam "TimeDongHui")
                                                                Close 
                                                            )]
                                                        (TimeParam "TimeDongHui")
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
                                                                    (Constant 3000000000)
                                                                    (UseValue "GiaKhoiDiem")
                                                                )
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Address "NguoiChoiC")
                                                                        (Address "NguoiChoiC")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 3000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                    )
                                                                    (Pay
                                                                        (Address "NguoiChoiA")
                                                                        (Account (Address "NguoiChoiB"))
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 3000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                        (Pay
                                                                            (Address "NguoiChoiC")
                                                                            (Account (Address "NguoiChoiB"))
                                                                            (Token "" "")
                                                                            (SubValue
                                                                                (Constant 3000000000)
                                                                                (UseValue "GiaKhoiDiem")
                                                                            )
                                                                            Close 
                                                                        )
                                                                    )]
                                                                (TimeParam "TimeDongHui")
                                                                Close 
                                                            )]
                                                        (TimeParam "TimeDongHui")
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
                                                                    (Constant 3000000000)
                                                                    (UseValue "GiaKhoiDiem")
                                                                )
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Address "NguoiChoiB")
                                                                        (Address "NguoiChoiB")
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 3000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                    )
                                                                    (Pay
                                                                        (Address "NguoiChoiA")
                                                                        (Account (Address "NguoiChoiC"))
                                                                        (Token "" "")
                                                                        (SubValue
                                                                            (Constant 3000000000)
                                                                            (UseValue "GiaKhoiDiem")
                                                                        )
                                                                        (Pay
                                                                            (Address "NguoiChoiB")
                                                                            (Account (Address "NguoiChoiC"))
                                                                            (Token "" "")
                                                                            (SubValue
                                                                                (Constant 3000000000)
                                                                                (UseValue "GiaKhoiDiem")
                                                                            )
                                                                            Close 
                                                                        )
                                                                    )]
                                                                (TimeParam "TimeDongHui")
                                                                Close 
                                                            )]
                                                        (TimeParam "TimeDongHui")
                                                        Close 
                                                    )]
                                                (TimeParam "TimeKetThucDauGia")
                                                (When
                                                    []
                                                    (TimeParam "TimeOracleBaoGiaKhoiDiemThangThu2")
                                                    (When
                                                        [Case
                                                            (Choice
                                                                (ChoiceId
                                                                    "OracleBaoGiaKhoiDiemLanThu2"
                                                                    (Address "AddressOracle")
                                                                )
                                                                [Bound 5 10]
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
                                                                                    "OracleBaoGiaKhoiDiemLanThu2"
                                                                                    (Address "AddressOracle")
                                                                                ))
                                                                        )
                                                                        (Constant 100)
                                                                    )
                                                                )
                                                                (When
                                                                    []
                                                                    (TimeParam "TimeDauGiaLan2")
                                                                    (Let
                                                                        "GiaKhoiDiemLan2"
                                                                        (UseValue "GiaKhoiDiemLan2")
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
                                                                                                (Constant 3000000000)
                                                                                                (UseValue "GiaKhoiDiemLan2")
                                                                                            )
                                                                                        )
                                                                                        (When
                                                                                            [Case
                                                                                                (Deposit
                                                                                                    (Address "NguoiChoiC")
                                                                                                    (Address "NguoiChoiC")
                                                                                                    (Token "" "")
                                                                                                    (SubValue
                                                                                                        (Constant 3000000000)
                                                                                                        (UseValue "GiaKhoiDiemLan2")
                                                                                                    )
                                                                                                )
                                                                                                (Pay
                                                                                                    (Address "NguoiChoiB")
                                                                                                    (Account (Address "NguoiChoiA"))
                                                                                                    (Token "" "")
                                                                                                    (SubValue
                                                                                                        (Constant 3000000000)
                                                                                                        (UseValue "GiaKhoiDiemLan2")
                                                                                                    )
                                                                                                    (Pay
                                                                                                        (Address "NguoiChoiC")
                                                                                                        (Account (Address "NguoiChoiA"))
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 3000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                        Close 
                                                                                                    )
                                                                                                )]
                                                                                            (TimeParam "TimeDongHuiLan2")
                                                                                            Close 
                                                                                        )]
                                                                                    (TimeParam "TimeDongHuiLan2")
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
                                                                                                (Constant 3000000000)
                                                                                                (UseValue "GiaKhoiDiemLan2")
                                                                                            )
                                                                                        )
                                                                                        (When
                                                                                            [Case
                                                                                                (Deposit
                                                                                                    (Address "NguoiChoiC")
                                                                                                    (Address "NguoiChoiC")
                                                                                                    (Token "" "")
                                                                                                    (SubValue
                                                                                                        (Constant 3000000000)
                                                                                                        (UseValue "GiaKhoiDiemLan2")
                                                                                                    )
                                                                                                )
                                                                                                (Pay
                                                                                                    (Address "NguoiChoiA")
                                                                                                    (Account (Address "NguoiChoiB"))
                                                                                                    (Token "" "")
                                                                                                    (SubValue
                                                                                                        (Constant 3000000000)
                                                                                                        (UseValue "GiaKhoiDiemLan2")
                                                                                                    )
                                                                                                    (Pay
                                                                                                        (Address "NguoiChoiC")
                                                                                                        (Account (Address "NguoiChoiB"))
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 3000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                        Close 
                                                                                                    )
                                                                                                )]
                                                                                            (TimeParam "TimeDongHuiLan2")
                                                                                            Close 
                                                                                        )]
                                                                                    (TimeParam "TimeDongHuiLan2")
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
                                                                                                (Constant 3000000000)
                                                                                                (UseValue "GiaKhoiDiemLan2")
                                                                                            )
                                                                                        )
                                                                                        (When
                                                                                            [Case
                                                                                                (Deposit
                                                                                                    (Address "NguoiChoiB")
                                                                                                    (Address "NguoiChoiB")
                                                                                                    (Token "" "")
                                                                                                    (SubValue
                                                                                                        (Constant 3000000000)
                                                                                                        (UseValue "GiaKhoiDiemLan2")
                                                                                                    )
                                                                                                )
                                                                                                (Pay
                                                                                                    (Address "NguoiChoiA")
                                                                                                    (Account (Address "NguoiChoiC"))
                                                                                                    (Token "" "")
                                                                                                    (SubValue
                                                                                                        (Constant 3000000000)
                                                                                                        (UseValue "GiaKhoiDiemLan2")
                                                                                                    )
                                                                                                    (Pay
                                                                                                        (Address "NguoiChoiB")
                                                                                                        (Account (Address "NguoiChoiC"))
                                                                                                        (Token "" "")
                                                                                                        (SubValue
                                                                                                            (Constant 3000000000)
                                                                                                            (UseValue "GiaKhoiDiemLan2")
                                                                                                        )
                                                                                                        Close 
                                                                                                    )
                                                                                                )]
                                                                                            (TimeParam "TimeDongHuiLan2")
                                                                                            Close 
                                                                                        )]
                                                                                    (TimeParam "TimeDongHuiLan2")
                                                                                    Close 
                                                                                )]
                                                                            (TimeParam "TimeKetThucDauGiaLan2")
                                                                            Close 
                                                                        )
                                                                    )
                                                                )
                                                            )]
                                                        (TimeParam "TimeKetThucOracleBaoGiaKhoiDiemThangThu2")
                                                        Close 
                                                    )
                                                )
                                            )
                                        )
                                    )
                                )]
                            (TimeParam "TimeOracleBaoGiaKhoiDiem")
                            Close 
                        )]
                    (TimeParam "TimeChuyenCoc")
                    Close 
                )]
            (TimeParam "TimeChuyenCoc")
            Close 
        )]
    (TimeParam "TimeChuyenCoc")
    Close 
