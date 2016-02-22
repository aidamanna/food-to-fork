Feature: Search recipe

  Scenario: Search existing recipe

    Given I am registered in Food2Fork
    When I search for a recipe [text:velvet cheesecake]
    Then I should get a list with the recipes that include my search