@login_feature
Feature: Login Test Suite

  Background:
    Given go to website

  @smoke
  Scenario: Login standart user successfully
    Given login with standart user

  Scenario: Login valid user successfully
    Given login with valid user