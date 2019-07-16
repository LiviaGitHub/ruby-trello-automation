Feature: Validate logout the system

@general @logout @login
Scenario: Logout
  Given User is logged in
  When click on user header
  And click on logout
  Then system returns to home page
