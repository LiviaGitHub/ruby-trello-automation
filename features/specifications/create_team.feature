Feature: Create a new team

@general @login @createTeam
Scenario: Create a new team
    Given User is on the home page
    When click on Create a team
    And enter the name
    And click on Create
    Then the new team is created successfully
