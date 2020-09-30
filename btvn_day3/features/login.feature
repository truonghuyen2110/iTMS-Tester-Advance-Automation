Feature: Login function
    As a user,
    I want to login in to website,
    So that I can access successfully

    Scenario Outline: Login invalid
        Given Go to the login page
        When User typing usename:'<username>'
        And Enter password:'<password>'
        And Press login
        Then '<result>' result should be listed
        Examples:
            | username | password             | result                    |
            | huyentt  | 123456!              | Your username is invalid! |
            | tthuyen  | SuperSecretPassword! | Your username is invalid! |
    Scenario: Login valid
        Given Go to the login page
        When User typing username and password
        Then  "You logged into a secure area!" result should be listed