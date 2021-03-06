Feature: Anonymous user can contact the school
In order to get in contact with the school
As an anonymous user
I want to be send a message to the school online

  Scenario: See the contact page
    Given I am on "/kontakt"
    Then I should see "Kontakt"

  Scenario: Write an online message
    Given I am on "/kontakt"
    When I fill in the following: 
        | Navn    | Svend Aage Thomsen |
        | E-mail  | webmaster@vih.dk   |
        | Telefon | 26176860           |
        | Besked  | Min besked         |
      And I press "Indsend"
    Then I should see "Tak for din besked."
 
