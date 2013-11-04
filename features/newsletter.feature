Feature: Anonymous user sign up for the newsletter
In order to get people to keep in contact with the school
As an anonymous user
I want to be able to sign up for the newsletter

  Scenario: See registration form for the newsletter
    Given I am on "/nyhedsbrev"
    Then I should see "Nyhedsbrev"

  Scenario: Register for the newsletter
    Given I am on "/nyhedsbrev"
    When I fill in the following: 
        | email | webmaster@vih.dk |
      And I press "Tilmeld"
    Then I should see "Du er nu tilmeldt nyhedsbrevet."

