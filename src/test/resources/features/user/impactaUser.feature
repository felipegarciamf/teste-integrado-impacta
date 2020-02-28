Feature: Testes da impacta

  Scenario: Gravar um usuário
    Given user would like to save a user
    And user informs login with value equal "JoanaDark1"
    And user informs age with value equal "22"
    And user informs full_name with value equal "Joana Dark"
    And user informs email with value equal "joana@impacta.com.br"
    When user clicks on save button
    Then user should see "save with success" message
    When user wants to see user information
    Then user should see "success" message
    And user should see login with value "JoanaDark1"

  Scenario: User update a register with put
    Given user would like to save a user
    And user informs login with value equal "bugluna"
    And user informs full_name with value equal "Bug Luna Agapito Correa2"
    And user informs email with value equal "bug.luna@gmail.com"
    And user informs age with value equal "8"
    When user clicks on save button
    And user informs login with value equal "bugluna"
    And user informs full_name with value equal "Bug Luna da Silva Agapito Correa2"
    And user informs email with value equal "bug.luna@gmail.com"
    And user informs age with value equal "7"
    And user clicks on save button again
    And user wants to see user information
    Then user should see "success" message
    And user should see full_name with value "Bug Luna da Silva Agapito Correa2"
    And user clicks on delete button
    Then user should see "no content" message

  Scenario: User update a register with put and delete
    Given user would like to save a user
    And user informs login with value equal "teste"
    And user informs full_name with value equal "teste"
    And user informs email with value equal "teste@gmail.com"
    And user informs age with value equal "8"
    When user clicks on save button
    Then user should see "save with success" message
    And user should see login with value "teste"
    And user clicks on delete button
    Then user should see "no content" message
