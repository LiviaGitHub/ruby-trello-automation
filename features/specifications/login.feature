Feature: Validate login the system

@general @login
Scenario: Access the system
    Given sign in to login screen
    When enter the email
    And enter the password
    And click on login
    Then login done successfully
