When
    [Case
        (Deposit
            (Role "voter1")
            (Role "voter1")
            (Token "" "VotingPass1")
            (Constant 1)
        )
        (When
            [Case
                (Choice
                    (ChoiceId
                        "VoteOption_v1"
                        (Role "voter1")
                    )
                    [Bound 0 2]
                )
                (Pay
                    (Role "voter1")
                    (Party (Role "voter1"))
                    (Token "" "VotingPass1")
                    (Constant 1)
                    (When
                        [Case
                            (Deposit
                                (Role "voter2")
                                (Role "voter2")
                                (Token "" "VotingPass2")
                                (Constant 1)
                            )
                            (When
                                [Case
                                    (Choice
                                        (ChoiceId
                                            "VoteOption_v2"
                                            (Role "voter2")
                                        )
                                        [Bound 0 2]
                                    )
                                    (Pay
                                        (Role "voter2")
                                        (Party (Role "voter2"))
                                        (Token "" "VotingPass2")
                                        (Constant 1)
                                        (When
                                            [Case
                                                (Deposit
                                                    (Role "voter3")
                                                    (Role "voter3")
                                                    (Token "" "VotingPass3")
                                                    (Constant 1)
                                                )
                                                (When
                                                    [Case
                                                        (Choice
                                                            (ChoiceId
                                                                "VoteOption_v3"
                                                                (Role "voter3")
                                                            )
                                                            [Bound 0 2]
                                                        )
                                                        (Pay
                                                            (Role "voter3")
                                                            (Party (Role "voter3"))
                                                            (Token "" "VotingPass3")
                                                            (Constant 1)
                                                            (When
                                                                [Case
                                                                    (Deposit
                                                                        (Role "voter4")
                                                                        (Role "voter4")
                                                                        (Token "" "VotingPass4")
                                                                        (Constant 1)
                                                                    )
                                                                    (When
                                                                        [Case
                                                                            (Choice
                                                                                (ChoiceId
                                                                                    "VoteOption_v4"
                                                                                    (Role "voter4")
                                                                                )
                                                                                [Bound 0 2]
                                                                            )
                                                                            (Pay
                                                                                (Role "voter4")
                                                                                (Party (Role "voter4"))
                                                                                (Token "" "VotingPass4")
                                                                                (Constant 1)
                                                                                (When
                                                                                    [Case
                                                                                        (Deposit
                                                                                            (Role "voter5")
                                                                                            (Role "voter5")
                                                                                            (Token "" "VotingPass5")
                                                                                            (Constant 1)
                                                                                        )
                                                                                        (When
                                                                                            [Case
                                                                                                (Choice
                                                                                                    (ChoiceId
                                                                                                        "VoteOption_v5"
                                                                                                        (Role "voter5")
                                                                                                    )
                                                                                                    [Bound 0 2]
                                                                                                )
                                                                                                (Pay
                                                                                                    (Role "voter5")
                                                                                                    (Party (Role "voter5"))
                                                                                                    (Token "" "VotingPass5")
                                                                                                    (Constant 1)
                                                                                                    Close 
                                                                                                )]
                                                                                            (TimeParam "votingDeadline_Voter5")
                                                                                            Close 
                                                                                        )]
                                                                                    (TimeParam "votingPassDeadline_Voter5")
                                                                                    Close 
                                                                                )
                                                                            )]
                                                                        (TimeParam "votingDeadline_Voter4")
                                                                        Close 
                                                                    )]
                                                                (TimeParam "votingPassDeadline_Voter4")
                                                                Close 
                                                            )
                                                        )]
                                                    (TimeParam "votingDeadline_Voter3")
                                                    Close 
                                                )]
                                            (TimeParam "votingPassDeadline_Voter3")
                                            Close 
                                        )
                                    )]
                                (TimeParam "votingDeadline_Voter2")
                                Close 
                            )]
                        (TimeParam "votingPassDeadline_Voter2")
                        Close 
                    )
                )]
            (TimeParam "votingDeadline_Voter1")
            Close 
        )]
    (TimeParam "votingPassDeadline_Voter1")
    Close 
