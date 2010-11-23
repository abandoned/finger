Feature: Finger
  In order to find out more about people
  As a CLI
  I want to be able to look up their user information

  Scenario: Delegates to original finger by default
    When I run "finger `whoami`"
    Then the output should contain "Login"
    And the output should contain "Name"

  Scenario: Looks up a user on GitHub
    When I run "finger --github rails"
    Then show me the output
