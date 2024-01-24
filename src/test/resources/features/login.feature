Feature: Login Test
  # Agile story :  As a user I should be able to login with valid credentials
  Background:
    Given The user navigates to website

  Scenario: Positive Login Test 1 without parameter
    When The user  clicks on login button and enters valid credentials
    Then The user verifies welcome message


  Scenario: Positive Login Test 2 with parameter
    When The user  clicks on login button and enters "evensteven" and "testdeneme1" credentials
    Then The user verifies welcome "evensteven" message


  Scenario Outline: : Positive Login Test 3 with scenario outline
    When The user  clicks on login button and enters "<username>" and "<password>" credentials
    Then The user verifies welcome "<username>" message
    Examples:
      | username   | password    |
      | evensteven | testdeneme1 |

  @wip
  Scenario Outline: : Positive Login Test 4 with scenario outline and data table
    When The user  clicks on login button and enters following credentials
      | username | <user_username> |
      | password | <user_password> |
    Then The user verifies welcome "<user_username>" message
    Examples:
      | user_username | user_password |
      | evensteven    | testdeneme1   |

    #negative login test
@t_negativeLogin
  Scenario Outline: Negative Login Test 5 with Scenario Outline
    When The user  clicks on login button and enters "<invalid_username>" and "<invalid_password>" credentials
    Then The user verifies invalid access message is "<message>"
    Examples:
      | invalid_username   | invalid_password    | message                                |
      | evesteven          |                     | Please fill out Username and Password. |
      |                    | testdeneme1         | Please fill out Username and Password. |
      | evensteven_invalid | testdeneme1         | User does not exist.                   |
      | evesteven          | testdeneme1_invalid | Wrong password.                        |
      |                    |                     | Please fill out Username and Password. |
      | evensteven_invalid | testdeneme1_invalid | User does not exist.                   |







