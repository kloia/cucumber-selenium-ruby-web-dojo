Feature: Test Automation Dojo

  Background:
    Given  go to website

  Scenario: Verify logo
    Then verify logo is displayed

  Scenario: Verify register page
    When click register page
    Then verify register

  @smoke
  Scenario: Search ayakkabı
    When  search "Ayakkabı"
    Then verify search data

  @search
  Scenario: Search domates
    When  search "Domates"
    Then verify search data

  Scenario: Verify excel data
    When verify excel data