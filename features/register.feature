Feature: Anonymous user can register for a course
In order to get people on the waiting list
As an anonymous user
I want to be able to register

  Scenario: See registration form
    Given I am on "/tilmelding"
    Then I should see "Tilmelding"

  Scenario: Register for the waiting list online
    Given I am on "/tilmelding"
    When I select the radio button "Fodbold"
      And I select the radio button "2019-2020"
      And I select the radio button "10. klasse"
      And I select the radio button "Dreng"
      And I fill in the following: 
        | Navn                                    | Svend Aage Thomsen |
        | Adresselinje 1                          | Ørnebjergvej 28    |
        | Postnummer                              | 7100               |
        | By                                      | Vejle              |
        | Telefon                                 | 75820811           |
        | E-mail                                  | webmaster@vih.dk   |        
      And I press "Næste side >"
    Then I should see "Om at gå i skole"
    When I fill in the following:
        | Hvilken skole kommer du fra?                                      | Vejle Idrætsefterskole |
        | Hvordan har du det med at gå i skole?                             | Vejle Idrætsefterskole |
        | Hvilke fag kan du godt lide og hvorfor?                           | Dansk, matematik       |
        | Hvor længe har du dyrket din linjeidræt?                          | 42 år                  |
        | Hvilket niveau befinder du dig på?                                | Suverænt niveau        |
        | Hvilken plads / disciplin?                                        | Alle pladser           | 
        | Hvor mange gange om ugen træner du?                               | Mange                  |
        | Er du medlem af en idrætsforening? (Hvis cykling; har du licens?) | VB                     |
       And I press "Næste side >"
     Then I should see "Dig på efterskole"
     Given I check the box "Annoncer"
     When I fill in the following:
        | Hvad forventer du af et år på efterskolen?      | Alt muligt  |
        | Kommentar                                       | Alle mulige |
       And I press "Næste side >"
     Then I should see "Din mor"
        | Navn                                    | Svend Aage Thomsen |
        | Adresselinje 1                          | Ørnebjergvej 28    |
        | Postnummer                              | 7100               |
        | By                                      | Vejle              |
        | Telefon                                 | 75820811           |
        | E-mail                                  | webmaster@vih.dk   |
        | Navn                                    | Svend Aage Thomsen |
        | Adresselinje 1                          | Ørnebjergvej 28    |
        | Postnummer                              | 7100               |
        | By                                      | Vejle              |
        | Telefon                                 | 75820811           |
        | E-mail                                  | webmaster@vih.dk   |
       And I press "Send ansøgning"
     Then I should see "Tak, din indsendelse er modtaget."
