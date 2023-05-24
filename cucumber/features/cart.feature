@cart_feature
Feature: Cart Test Suite

  Background:
    Given go to website
    And login with valid user

  @smoke
  Scenario: Add product to cart
    When search "iPhone 14"
    And add "1" product
    And go to my basket
    Then verify my basket





