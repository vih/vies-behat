Feature: Anonymous user can register for a course
In order to get people on the waiting list
As an anonymous user
I want to be able to register

  Scenario: See registration form
    Given I am on "/tilmelding"
    Then I should see "Tilmelding"

  Scenario: Register for the waiting list online
    Given I am on "/tilmeldingsformular"
    When I fill in the following: 
        | formfield_14 | Svend Aage Thomsen |
      And I press "Send"
    Then I should see "Udfyld venligst elevens navn."

