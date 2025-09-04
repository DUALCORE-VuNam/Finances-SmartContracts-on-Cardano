When
    [Case
        (Choice
            (ChoiceId
                "UsageCount"
                (Role "oracle")
            )
            [Bound 0 1000000]
        )
        (When
            [Case
                (Choice
                    (ChoiceId
                        "UnitPrice"
                        (Role "oracle")
                    )
                    [Bound 0 1000000]
                )
                (When
                    [Case
                        (Choice
                            (ChoiceId
                                "ConfirmRevenue"
                                (Role "platform")
                            )
                            [Bound 1 1]
                        )
                        (When
                            [Case
                                (Choice
                                    (ChoiceId
                                        "ConfirmRevenue"
                                        (Role "creator1")
                                    )
                                    [Bound 1 1]
                                )
                                (When
                                    [Case
                                        (Deposit
                                            (Role "platform")
                                            (Role "platform")
                                            (Token "" "")
                                            (MulValue
                                                (ChoiceValue
                                                    (ChoiceId
                                                        "UsageCount"
                                                        (Role "oracle")
                                                    ))
                                                (ChoiceValue
                                                    (ChoiceId
                                                        "UnitPrice"
                                                        (Role "oracle")
                                                    ))
                                            )
                                        )
                                        (Pay
                                            (Role "platform")
                                            (Party (Role "creator1"))
                                            (Token "" "")
                                            (DivValue
                                                (MulValue
                                                    (MulValue
                                                        (ChoiceValue
                                                            (ChoiceId
                                                                "UsageCount"
                                                                (Role "oracle")
                                                            ))
                                                        (ChoiceValue
                                                            (ChoiceId
                                                                "UnitPrice"
                                                                (Role "oracle")
                                                            ))
                                                    )
                                                    (ConstantParam "percent_c1")
                                                )
                                                (Constant 100)
                                            )
                                            (Pay
                                                (Role "creator1")
                                                (Party (Role "subcreator1"))
                                                (Token "" "")
                                                (DivValue
                                                    (MulValue
                                                        (MulValue
                                                            (ChoiceValue
                                                                (ChoiceId
                                                                    "UsageCount"
                                                                    (Role "oracle")
                                                                ))
                                                            (ChoiceValue
                                                                (ChoiceId
                                                                    "UnitPrice"
                                                                    (Role "oracle")
                                                                ))
                                                        )
                                                        (ConstantParam "percent_sub1")
                                                    )
                                                    (Constant 100)
                                                )
                                                (Pay
                                                    (Role "creator1")
                                                    (Party (Role "producer1"))
                                                    (Token "" "")
                                                    (DivValue
                                                        (MulValue
                                                            (MulValue
                                                                (ChoiceValue
                                                                    (ChoiceId
                                                                        "UsageCount"
                                                                        (Role "oracle")
                                                                    ))
                                                                (ChoiceValue
                                                                    (ChoiceId
                                                                        "UnitPrice"
                                                                        (Role "oracle")
                                                                    ))
                                                            )
                                                            (ConstantParam "percent_prod1")
                                                        )
                                                        (Constant 100)
                                                    )
                                                    (Pay
                                                        (Role "platform")
                                                        (Party (Role "creator2"))
                                                        (Token "" "")
                                                        (DivValue
                                                            (MulValue
                                                                (MulValue
                                                                    (ChoiceValue
                                                                        (ChoiceId
                                                                            "UsageCount"
                                                                            (Role "oracle")
                                                                        ))
                                                                    (ChoiceValue
                                                                        (ChoiceId
                                                                            "UnitPrice"
                                                                            (Role "oracle")
                                                                        ))
                                                                )
                                                                (ConstantParam "percent_c2")
                                                            )
                                                            (Constant 100)
                                                        )
                                                        (Pay
                                                            (Role "platform")
                                                            (Party (Role "royaltyReserve"))
                                                            (Token "" "")
                                                            (DivValue
                                                                (MulValue
                                                                    (MulValue
                                                                        (ChoiceValue
                                                                            (ChoiceId
                                                                                "UsageCount"
                                                                                (Role "oracle")
                                                                            ))
                                                                        (ChoiceValue
                                                                            (ChoiceId
                                                                                "UnitPrice"
                                                                                (Role "oracle")
                                                                            ))
                                                                    )
                                                                    (ConstantParam "percent_reserve")
                                                                )
                                                                (Constant 100)
                                                            )
                                                            Close 
                                                        )
                                                    )
                                                )
                                            )
                                        )]
                                    (TimeParam "payDeadline")
                                    Close 
                                )]
                            (TimeParam "payDeadline")
                            Close 
                        )]
                    (TimeParam "payDeadline")
                    Close 
                )]
            (TimeParam "payDeadline")
            Close 
        ), Case
        (Choice
            (ChoiceId
                "Dispute"
                (Role "creator1")
            )
            [Bound 1 1]
        )
        Close ]
    (TimeParam "usageReportTimeout")
    Close 
