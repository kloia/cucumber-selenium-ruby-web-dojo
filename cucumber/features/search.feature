Feature:

  Background:
    Given go to website

  Scenario: login valid
    And login with valid
    And  verify user icon

  Scenario:login admin
    And login with admin

  Scenario:login standart
    And login with standart