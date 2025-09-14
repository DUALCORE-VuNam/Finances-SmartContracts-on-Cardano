When
    [Case
        (Deposit
            (Role "Charity")
            (Role "Donor")
            (Token "" "")
            (ConstantParam "TotalDonation")
        )
        (When
            [Case
                (Notify TrueObs )
                (Pay
                    (Role "Charity")
                    (Party (Role "ProjectOperator"))
                    (Token "" "")
                    (ConstantParam "Payment1")
                    (When
                        [Case
                            (Choice
                                (ChoiceId
                                    "Complaint_1"
                                    (Role "Donor")
                                )
                                [Bound 0 1]
                            )
                            (If
                                (ValueEQ
                                    (ChoiceValue
                                        (ChoiceId
                                            "Complaint_1"
                                            (Role "Donor")
                                        ))
                                    (Constant 1)
                                )
                                (When
                                    [Case
                                        (Choice
                                            (ChoiceId
                                                "Verify_Complaint_1"
                                                (Role "Verifier")
                                            )
                                            [Bound 0 1]
                                        )
                                        (If
                                            (ValueEQ
                                                (ChoiceValue
                                                    (ChoiceId
                                                        "Verify_Complaint_1"
                                                        (Role "Verifier")
                                                    ))
                                                (Constant 1)
                                            )
                                            (Pay
                                                (Role "Charity")
                                                (Party (Role "Donor"))
                                                (Token "" "")
                                                (ConstantParam "Refund1")
                                                Close 
                                            )
                                            (Pay
                                                (Role "Charity")
                                                (Party (Role "ProjectOperator"))
                                                (Token "" "")
                                                (ConstantParam "Payment2")
                                                (When
                                                    [Case
                                                        (Choice
                                                            (ChoiceId
                                                                "Complaint_2"
                                                                (Role "Donor")
                                                            )
                                                            [Bound 0 1]
                                                        )
                                                        (If
                                                            (ValueEQ
                                                                (ChoiceValue
                                                                    (ChoiceId
                                                                        "Complaint_2"
                                                                        (Role "Donor")
                                                                    ))
                                                                (Constant 1)
                                                            )
                                                            (When
                                                                [Case
                                                                    (Choice
                                                                        (ChoiceId
                                                                            "Verify_Complaint_2"
                                                                            (Role "Verifier")
                                                                        )
                                                                        [Bound 0 1]
                                                                    )
                                                                    (If
                                                                        (ValueEQ
                                                                            (ChoiceValue
                                                                                (ChoiceId
                                                                                    "Verify_Complaint_2"
                                                                                    (Role "Verifier")
                                                                                ))
                                                                            (Constant 1)
                                                                        )
                                                                        (Pay
                                                                            (Role "Charity")
                                                                            (Party (Role "Donor"))
                                                                            (Token "" "")
                                                                            (ConstantParam "Refund2")
                                                                            Close 
                                                                        )
                                                                        (Pay
                                                                            (Role "Charity")
                                                                            (Party (Role "ProjectOperator"))
                                                                            (Token "" "")
                                                                            (ConstantParam "Payment3")
                                                                            Close 
                                                                        )
                                                                    )]
                                                                1750723320000
                                                                (Pay
                                                                    (Role "Charity")
                                                                    (Party (Role "Donor"))
                                                                    (Token "" "")
                                                                    (ConstantParam "Refund2")
                                                                    Close 
                                                                )
                                                            )
                                                            (Pay
                                                                (Role "Charity")
                                                                (Party (Role "ProjectOperator"))
                                                                (Token "" "")
                                                                (ConstantParam "Payment3")
                                                                Close 
                                                            )
                                                        )]
                                                    1750636920000
                                                    (Pay
                                                        (Role "Charity")
                                                        (Party (Role "Donor"))
                                                        (Token "" "")
                                                        (ConstantParam "Refund2")
                                                        Close 
                                                    )
                                                )
                                            )
                                        )]
                                    1750550520000
                                    (Pay
                                        (Role "Charity")
                                        (Party (Role "Donor"))
                                        (Token "" "")
                                        (ConstantParam "Refund1")
                                        Close 
                                    )
                                )
                                (Pay
                                    (Role "Charity")
                                    (Party (Role "ProjectOperator"))
                                    (Token "" "")
                                    (ConstantParam "Payment2")
                                    (When
                                        [Case
                                            (Choice
                                                (ChoiceId
                                                    "Complaint_2"
                                                    (Role "Donor")
                                                )
                                                [Bound 0 1]
                                            )
                                            (If
                                                (ValueEQ
                                                    (ChoiceValue
                                                        (ChoiceId
                                                            "Complaint_2"
                                                            (Role "Donor")
                                                        ))
                                                    (Constant 1)
                                                )
                                                (When
                                                    [Case
                                                        (Choice
                                                            (ChoiceId
                                                                "Verify_Complaint_2"
                                                                (Role "Verifier")
                                                            )
                                                            [Bound 0 1]
                                                        )
                                                        (If
                                                            (ValueEQ
                                                                (ChoiceValue
                                                                    (ChoiceId
                                                                        "Verify_Complaint_2"
                                                                        (Role "Verifier")
                                                                    ))
                                                                (Constant 1)
                                                            )
                                                            (Pay
                                                                (Role "Charity")
                                                                (Party (Role "Donor"))
                                                                (Token "" "")
                                                                (ConstantParam "Refund2")
                                                                Close 
                                                            )
                                                            (Pay
                                                                (Role "Charity")
                                                                (Party (Role "ProjectOperator"))
                                                                (Token "" "")
                                                                (ConstantParam "Payment3")
                                                                Close 
                                                            )
                                                        )]
                                                    1750464120000
                                                    (Pay
                                                        (Role "Charity")
                                                        (Party (Role "Donor"))
                                                        (Token "" "")
                                                        (ConstantParam "Refund2")
                                                        Close 
                                                    )
                                                )
                                                (Pay
                                                    (Role "Charity")
                                                    (Party (Role "ProjectOperator"))
                                                    (Token "" "")
                                                    (ConstantParam "Payment3")
                                                    Close 
                                                )
                                            )]
                                        1750377720000
                                        (Pay
                                            (Role "Charity")
                                            (Party (Role "Donor"))
                                            (Token "" "")
                                            (ConstantParam "Refund2")
                                            Close 
                                        )
                                    )
                                )
                            )]
                        1750337760000 Close 
                    )
                )]
            1750205040000 Close 
        )]
    1750164960000 Close 
