When
    [Case
        (Choice
            (ChoiceId
                "Oraclebaogiakhoidiemlan1-Thang2"
                (Address "addressoracle")
            )
            [Bound 25 30]
        )
        (Let
            "GiaKhoiDiemThang2"
            (DivValue
                (MulValue
                    (Constant 10000000000)
                    (ChoiceValue
                        (ChoiceId
                            "Oraclebaogiakhoidiemlan1-Thang2"
                            (Address "addressoracle")
                        ))
                )
                (Constant 100)
            )
            (When
                []
                (TimeParam "Timedaugialan1-Thang2")
                (Let
                    "GiaKhoiDiemThang2"
                    (UseValue "GiaKhoiDiemThang2")
                    (If
                        (ValueEQ
                            (UseValue "A.HasClaimed")
                            (Constant 0)
                        )
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
                                        "A.HasClaimed"
                                        (Constant 1)
                                        (If
                                            (ValueEQ
                                                (UseValue "B.HasClaimed")
                                                (Constant 1)
                                            )
                                            (When
                                                [Case
                                                    (Deposit
                                                        (Role "QuyHuiThang2")
                                                        (Role "NguoiChoiB")
                                                        (Token "" "")
                                                        (Constant 10000000000)
                                                    )
                                                    (When
                                                        [Case
                                                            (Deposit
                                                                (Role "QuyHuiThang2")
                                                                (Role "NguoiChoiC")
                                                                (Token "" "")
                                                                (SubValue
                                                                    (Constant 10000000000)
                                                                    (UseValue "GiaKhoiDiemThang2")
                                                                )
                                                            )
                                                            (Pay
                                                                (Role "QuyHuiThang2")
                                                                (Account (Role "NguoiChoiA"))
                                                                (Token "" "")
                                                                (AvailableMoney
                                                                    (Role "QuyHuiThang2")
                                                                    (Token "" "")
                                                                )
                                                                Close 
                                                            )]
                                                        (TimeParam "time_param")
                                                        ?contract
                                                    )]
                                                (TimeParam "time_param")
                                                (When
                                                    []
                                                    (TimeParam "ThangThu3")
                                                    (When
                                                        [Case
                                                            (Deposit
                                                                ?party
                                                                ?from_party
                                                                ?token ?value
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        ?party
                                                                        ?from_party
                                                                        ?token ?value
                                                                    )
                                                                    (Pay
                                                                        ?party
                                                                        ?payee
                                                                        ?token
                                                                        ?value
                                                                        (Pay
                                                                            ?party
                                                                            ?payee
                                                                            ?token
                                                                            ?value ?contract
                                                                        )
                                                                    )]
                                                                (TimeParam "time_param")
                                                                ?contract
                                                            )]
                                                        (TimeParam "TimeDongHuiThang2")
                                                        (When
                                                            []
                                                            (TimeParam "TimeDongHuiThangThu3")
                                                            ?contract
                                                        )
                                                    )
                                                )
                                            )
                                            (When
                                                [Case
                                                    (Deposit
                                                        (Role "QuyHuiThang2")
                                                        (Role "NguoiChoiB")
                                                        (Token "" "")
                                                        (SubValue
                                                            (Constant 10000000000)
                                                            (UseValue "GiaKhoiDiemThang2")
                                                        )
                                                    )
                                                    (When
                                                        [Case
                                                            (Deposit
                                                                (Role "QuyHuiThang2")
                                                                (Role "NguoiChoiC")
                                                                (Token "" "")
                                                                (Constant 10000000000)
                                                            )
                                                            (Pay
                                                                (Role "QuyHuiThang2")
                                                                (Account (Role "NguoiChoiA"))
                                                                (Token "" "")
                                                                (SubValue
                                                                    (Constant 10000000000)
                                                                    (UseValue "GiaKhoiDiemThang2")
                                                                )
                                                                Close 
                                                            )]
                                                        (TimeParam "time_param")
                                                        Close 
                                                    )]
                                                (TimeParam "TimeDongHuiThang2")
                                                (When
                                                    []
                                                    (TimeParam "TimeDongHuiThangThu3")
                                                    (When
                                                        [Case
                                                            (Deposit
                                                                ?party
                                                                ?from_party
                                                                ?token ?value
                                                            )
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        ?party
                                                                        ?from_party
                                                                        ?token ?value
                                                                    )
                                                                    (Pay
                                                                        ?party
                                                                        ?payee
                                                                        ?token
                                                                        ?value
                                                                        (Pay
                                                                            ?party
                                                                            ?payee
                                                                            ?token
                                                                            ?value ?contract
                                                                        )
                                                                    )]
                                                                (TimeParam "time_param")
                                                                ?contract
                                                            )]
                                                        (TimeParam "ThangThu3")
                                                        ?contract
                                                    )
                                                )
                                            )
                                        )
                                    )
                                    (Let
                                        "A.HasClaimed"
                                        (Constant 0)
                                        Close 
                                    )
                                )]
                            (TimeParam "Timedonghuichetthang2")
                            Close 
                        )
                        (When
                            [Case
                                (Deposit
                                    (Role "QuyHuiThang2")
                                    (Role "NguoiChoiA")
                                    (Token "" "")
                                    (Constant 10000000000)
                                )
                                (When
                                    [Case
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
                                                "B.HasClaimed"
                                                (Constant 1)
                                                (When
                                                    [Case
                                                        (Deposit
                                                            (Role "QuyHuiThang2")
                                                            (Role "NguoiChoiC")
                                                            (Token "" "")
                                                            (SubValue
                                                                (Constant 10000000000)
                                                                (UseValue "GiaKhoiDiemThang2")
                                                            )
                                                        )
                                                        (Pay
                                                            (Role "QuyHuiThang2")
                                                            (Account (Role "NguoiChoiB"))
                                                            (Token "" "")
                                                            (AvailableMoney
                                                                (Role "QuyHuiThang2")
                                                                (Token "" "")
                                                            )
                                                            Close 
                                                        )]
                                                    (TimeParam "time_param")
                                                    (When
                                                        []
                                                        (TimeParam "TimeDongHuiThangThu3")
                                                        (When
                                                            [Case
                                                                (Deposit
                                                                    ?party
                                                                    ?from_party
                                                                    ?token ?value
                                                                )
                                                                (When
                                                                    [Case
                                                                        (Deposit
                                                                            ?party
                                                                            ?from_party
                                                                            ?token ?value
                                                                        )
                                                                        (Pay
                                                                            ?party
                                                                            ?payee
                                                                            ?token
                                                                            ?value
                                                                            (Pay
                                                                                ?party
                                                                                ?payee
                                                                                ?token
                                                                                ?value Close 
                                                                            )
                                                                        )]
                                                                    (TimeParam "time_param")
                                                                    Close 
                                                                )]
                                                            (TimeParam "time_param")
                                                            Close 
                                                        )
                                                    )
                                                )
                                            )
                                            (Let
                                                "B.HasClaimed"
                                                (Constant 0)
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
                                                "C.HasClaimed"
                                                (Constant 1)
                                                (When
                                                    [Case
                                                        (Deposit
                                                            (Role "QuyHuiThang2")
                                                            (Role "NguoiChoiB")
                                                            (Token "" "")
                                                            (SubValue
                                                                (Constant 10000000000)
                                                                (UseValue "GiaKhoiDiemThang2")
                                                            )
                                                        )
                                                        (Pay
                                                            (Role "QuyHuiThang2")
                                                            (Account (Role "NguoiChoiB"))
                                                            (Token "" "")
                                                            (AvailableMoney
                                                                (Role "QuyHuiThang2")
                                                                (Token "" "")
                                                            )
                                                            Close 
                                                        )]
                                                    (TimeParam "time_param")
                                                    (When
                                                        []
                                                        (TimeParam "TimeDongHuiThangThu3")
                                                        (When
                                                            [Case
                                                                (Deposit
                                                                    ?party
                                                                    ?from_party
                                                                    ?token ?value
                                                                )
                                                                (When
                                                                    [Case
                                                                        (Deposit
                                                                            ?party
                                                                            ?from_party
                                                                            ?token ?value
                                                                        )
                                                                        (Pay
                                                                            ?party
                                                                            ?payee
                                                                            ?token
                                                                            ?value
                                                                            (Pay
                                                                                ?party
                                                                                ?payee
                                                                                ?token
                                                                                ?value Close 
                                                                            )
                                                                        )]
                                                                    (TimeParam "time_param")
                                                                    Close 
                                                                )]
                                                            (TimeParam "time_param")
                                                            Close 
                                                        )
                                                    )
                                                )
                                            )
                                            (Let
                                                "C.HasClaimed"
                                                (Constant 0)
                                                Close 
                                            )
                                        )]
                                    (TimeParam "time_param")
                                    ?contract
                                )]
                            (TimeParam "time_param")
                            ?contract
                        )
                    )
                )
            )
        )]
    (TimeParam "TimeOraclebaogiathang2")
    Close 
