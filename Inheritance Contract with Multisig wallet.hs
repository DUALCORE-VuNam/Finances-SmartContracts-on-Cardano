When
    [Case
        (Deposit
            (Role "dad")
            (Role "inheritance_contract")
            (Token "" "")
            (ConstantParam "initial_fund")
        )
        (When
            [Case
                (Choice
                    (ChoiceId
                        "WithdrawReward_Q1"
                        (Role "dad")
                    )
                    [Bound 1 1]
                )
                (Pay
                    (Role "inheritance_contract")
                    (Party (Role "dad"))
                    (Token "" "")
                    (ConstantParam "stake_reward_Q1")
                    Close 
                ), Case
                (Choice
                    (ChoiceId
                        "WithdrawReward_Q1"
                        (Role "mom")
                    )
                    [Bound 1 1]
                )
                (Pay
                    (Role "inheritance_contract")
                    (Party (Role "mom"))
                    (Token "" "")
                    (ConstantParam "stake_reward_Q1")
                    Close 
                ), Case
                (Deposit
                    (Role "dad")
                    (Role "inheritance_contract")
                    (Token "" "")
                    (ConstantParam "additional_fund")
                )
                (When
                    [Case
                        (Choice
                            (ChoiceId
                                "WithdrawReward_Q1"
                                (Role "dad")
                            )
                            [Bound 1 1]
                        )
                        (Pay
                            (Role "inheritance_contract")
                            (Party (Role "dad"))
                            (Token "" "")
                            (ConstantParam "stake_reward_Q1")
                            Close 
                        ), Case
                        (Choice
                            (ChoiceId
                                "WithdrawReward_Q1"
                                (Role "mom")
                            )
                            [Bound 1 1]
                        )
                        (Pay
                            (Role "inheritance_contract")
                            (Party (Role "mom"))
                            (Token "" "")
                            (ConstantParam "stake_reward_Q1")
                            Close 
                        )]
                    (TimeParam "q1_deadline")
                    Close 
                )]
            (TimeParam "q1_deadline")
            (When
                [Case
                    (Choice
                        (ChoiceId
                            "WithdrawReward_Q2"
                            (Role "dad")
                        )
                        [Bound 1 1]
                    )
                    (Pay
                        (Role "inheritance_contract")
                        (Party (Role "dad"))
                        (Token "" "")
                        (ConstantParam "stake_reward_Q2")
                        Close 
                    ), Case
                    (Choice
                        (ChoiceId
                            "WithdrawReward_Q2"
                            (Role "mom")
                        )
                        [Bound 1 1]
                    )
                    (Pay
                        (Role "inheritance_contract")
                        (Party (Role "mom"))
                        (Token "" "")
                        (ConstantParam "stake_reward_Q2")
                        Close 
                    )]
                (TimeParam "q2_deadline")
                (When
                    [Case
                        (Choice
                            (ChoiceId
                                "WithdrawReward_Q3"
                                (Role "dad")
                            )
                            [Bound 1 1]
                        )
                        (Pay
                            (Role "inheritance_contract")
                            (Party (Role "dad"))
                            (Token "" "")
                            (ConstantParam "stake_reward_Q3")
                            Close 
                        ), Case
                        (Choice
                            (ChoiceId
                                "WithdrawReward_Q3"
                                (Role "mom")
                            )
                            [Bound 1 1]
                        )
                        (Pay
                            (Role "inheritance_contract")
                            (Party (Role "mom"))
                            (Token "" "")
                            (ConstantParam "stake_reward_Q3")
                            Close 
                        )]
                    (TimeParam "q3_deadline")
                    (When
                        [Case
                            (Choice
                                (ChoiceId
                                    "WithdrawReward_Q4"
                                    (Role "dad")
                                )
                                [Bound 1 1]
                            )
                            (Pay
                                (Role "inheritance_contract")
                                (Party (Role "dad"))
                                (Token "" "")
                                (ConstantParam "stake_reward_Q4")
                                Close 
                            ), Case
                            (Choice
                                (ChoiceId
                                    "WithdrawReward_Q4"
                                    (Role "mom")
                                )
                                [Bound 1 1]
                            )
                            (Pay
                                (Role "inheritance_contract")
                                (Party (Role "mom"))
                                (Token "" "")
                                (ConstantParam "stake_reward_Q4")
                                Close 
                            )]
                        (TimeParam "q4_deadline")
                        (When
                            [Case
                                (Choice
                                    (ChoiceId
                                        "FinalConsent_dad"
                                        (Role "dad")
                                    )
                                    [Bound 1 1]
                                )
                                (When
                                    [Case
                                        (Choice
                                            (ChoiceId
                                                "FinalConsent_mom"
                                                (Role "mom")
                                            )
                                            [Bound 1 1]
                                        )
                                        (Pay
                                            (Role "inheritance_contract")
                                            (Party (Role "joint"))
                                            (Token "" "")
                                            (ConstantParam "initial_fund")
                                            Close 
                                        ), Case
                                        (Choice
                                            (ChoiceId
                                                "FinalConsent_child"
                                                (Role "child")
                                            )
                                            [Bound 1 1]
                                        )
                                        (Pay
                                            (Role "inheritance_contract")
                                            (Party (Role "joint"))
                                            (Token "" "")
                                            (ConstantParam "initial_fund")
                                            Close 
                                        )]
                                    (TimeParam "final_unlock_deadline")
                                    Close 
                                )]
                            (TimeParam "final_unlock_deadline")
                            (Pay
                                (Role "inheritance_contract")
                                (Party (Role "child"))
                                (Token "" "")
                                (ConstantParam "initial_fund")
                                Close 
                            )
                        )
                    )
                )
            )
        )]
    (TimeParam "deposit_deadline")
    Close 
