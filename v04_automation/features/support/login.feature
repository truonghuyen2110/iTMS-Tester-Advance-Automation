Feature: Login function
    As a user, I want to login successfully system
    Background:
        Given go to the login page

    @valid
    Scenario: Login valid testcase
        When enter username and password
        Then display dashboard page
