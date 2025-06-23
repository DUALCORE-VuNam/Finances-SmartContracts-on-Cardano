When
    [Case
        (Deposit
            (Role "ChuDauTu")
            (Role "ChuDauTu")
            (Token "" "")
            (ConstantParam "PhiThietKe")
        )
        (When
            [Case
                (Deposit
                    (Role "DonViTuVan")
                    (Role "DonViTuVan")
                    (Token "" "")
                    (ConstantParam "CocTuVan")
                )
                (When
                    [Case
                        (Deposit
                            (Role "DonViThamTra")
                            (Role "DonViThamTra")
                            (Token "" "")
                            (ConstantParam "CocThamTra")
                        )
                        (Pay
                            (Role "ChuDauTu")
                            (Party (Role "DonViTuVan"))
                            (Token "" "")
                            (DivValue
                                (MulValue
                                    (ConstantParam "PhiThietKe")
                                    (Constant 30)
                                )
                                (Constant 100)
                            )
                            (When
                                [Case
                                    (Choice
                                        (ChoiceId
                                            "HSTKDat"
                                            (Role "DonViThamTra")
                                        )
                                        [Bound 1 1]
                                    )
                                    (Pay
                                        (Role "ChuDauTu")
                                        (Party (Role "DonViTuVan"))
                                        (Token "" "")
                                        (DivValue
                                            (MulValue
                                                (ConstantParam "PhiThietKe")
                                                (Constant 50)
                                            )
                                            (Constant 100)
                                        )
                                        (Pay
                                            (Role "ChuDauTu")
                                            (Party (Role "DonViThamTra"))
                                            (Token "" "")
                                            (DivValue
                                                (MulValue
                                                    (ConstantParam "PhiThietKe")
                                                    (Constant 10)
                                                )
                                                (Constant 100)
                                            )
                                            (When
                                                [Case
                                                    (Choice
                                                        (ChoiceId
                                                            "NghiemThuCongTrinh"
                                                            (Role "ChuDauTu")
                                                        )
                                                        [Bound 1 1]
                                                    )
                                                    (Pay
                                                        (Role "ChuDauTu")
                                                        (Party (Role "DonViTuVan"))
                                                        (Token "" "")
                                                        (DivValue
                                                            (MulValue
                                                                (ConstantParam "PhiThietKe")
                                                                (Constant 10)
                                                            )
                                                            (Constant 100)
                                                        )
                                                        Close 
                                                    )]
                                                (TimeParam "GiamSatTacGia")
                                                Close 
                                            )
                                        )
                                    ), Case
                                    (Choice
                                        (ChoiceId
                                            "HSTKChuaDat"
                                            (Role "DonViThamTra")
                                        )
                                        [Bound 0 0]
                                    )
                                    (When
                                        [Case
                                            (Choice
                                                (ChoiceId
                                                    "HSTKDat"
                                                    (Role "DonViThamTra")
                                                )
                                                [Bound 1 1]
                                            )
                                            (Pay
                                                (Role "ChuDauTu")
                                                (Party (Role "DonViTuVan"))
                                                (Token "" "")
                                                (DivValue
                                                    (MulValue
                                                        (ConstantParam "PhiThietKe")
                                                        (Constant 50)
                                                    )
                                                    (Constant 100)
                                                )
                                                (Pay
                                                    (Role "ChuDauTu")
                                                    (Party (Role "DonViThamTra"))
                                                    (Token "" "")
                                                    (DivValue
                                                        (MulValue
                                                            (ConstantParam "PhiThietKe")
                                                            (Constant 10)
                                                        )
                                                        (Constant 100)
                                                    )
                                                    (When
                                                        [Case
                                                            (Choice
                                                                (ChoiceId
                                                                    "NghiemThuCongTrinh"
                                                                    (Role "ChuDauTu")
                                                                )
                                                                [Bound 1 1]
                                                            )
                                                            (Pay
                                                                (Role "ChuDauTu")
                                                                (Party (Role "DonViTuVan"))
                                                                (Token "" "")
                                                                (DivValue
                                                                    (MulValue
                                                                        (ConstantParam "PhiThietKe")
                                                                        (Constant 10)
                                                                    )
                                                                    (Constant 100)
                                                                )
                                                                Close 
                                                            )]
                                                        (TimeParam "GiamSatTacGia")
                                                        Close 
                                                    )
                                                )
                                            )]
                                        (TimeParam "TVTKNopHSTKChinhsua")
                                        (Pay
                                            (Role "DonViTuVan")
                                            (Party (Role "ChuDauTu"))
                                            (Token "" "")
                                            (ConstantParam "CocTuVan")
                                            Close 
                                        )
                                    )]
                                (TimeParam "TVNopHSTK")
                                (Pay
                                    (Role "DonViTuVan")
                                    (Party (Role "ChuDauTu"))
                                    (Token "" "")
                                    (DivValue
                                        (MulValue
                                            (ConstantParam "CocTuVan")
                                            (Constant 20)
                                        )
                                        (Constant 100)
                                    )
                                    (When
                                        [Case
                                            (Choice
                                                (ChoiceId
                                                    "HSTKDat"
                                                    (Role "DonViThamTra")
                                                )
                                                [Bound 1 1]
                                            )
                                            (Pay
                                                (Role "ChuDauTu")
                                                (Party (Role "DonViTuVan"))
                                                (Token "" "")
                                                (DivValue
                                                    (MulValue
                                                        (ConstantParam "PhiThietKe")
                                                        (Constant 50)
                                                    )
                                                    (Constant 100)
                                                )
                                                (Pay
                                                    (Role "ChuDauTu")
                                                    (Party (Role "DonViThamTra"))
                                                    (Token "" "")
                                                    (DivValue
                                                        (MulValue
                                                            (ConstantParam "PhiThietKe")
                                                            (Constant 10)
                                                        )
                                                        (Constant 100)
                                                    )
                                                    (When
                                                        [Case
                                                            (Choice
                                                                (ChoiceId
                                                                    "NghiemThuCongTrinh"
                                                                    (Role "ChuDauTu")
                                                                )
                                                                [Bound 1 1]
                                                            )
                                                            (Pay
                                                                (Role "ChuDauTu")
                                                                (Party (Role "DonViTuVan"))
                                                                (Token "" "")
                                                                (DivValue
                                                                    (MulValue
                                                                        (ConstantParam "PhiThietKe")
                                                                        (Constant 10)
                                                                    )
                                                                    (Constant 100)
                                                                )
                                                                Close 
                                                            )]
                                                        (TimeParam "GiamSatTacGia")
                                                        Close 
                                                    )
                                                )
                                            )]
                                        (TimeParam "GiahanTienDo")
                                        (Pay
                                            (Role "DonViTuVan")
                                            (Party (Role "ChuDauTu"))
                                            (Token "" "")
                                            (ConstantParam "CocTuVan")
                                            Close 
                                        )
                                    )
                                )
                            )
                        )]
                    (TimeParam "TTNopCoc")
                    Close 
                )]
            (TimeParam "TVNopCoc")
            Close 
        )]
    (TimeParam "CĐTNopPhiThietKe")
    Close 
