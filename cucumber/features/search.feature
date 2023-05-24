Feature:

  Background:
    Given go to website

  @smoke
  Scenario Outline: Search data succesfully
    When  search <search_data>
    Then verify search data
    Examples:
      | search_data |
      | "Ayakkabı"  |
      | "Domates"   |
