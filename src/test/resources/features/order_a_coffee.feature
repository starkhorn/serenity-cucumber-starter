Feature: Order a coffee

  Scenario: Order a cappuccino
    Given I am thirsty
    When I order a cappuccino
    Then I should not receive a latte

  Scenario Outline: Order a latte
    Given I am thirsty
    When I order a latte
    Then I should not receive a "<coffee>"

    Examples:
      | coffee     |
      | cappuccino |

  Scenario: Order an americano
    Given I am thirsty
    When I order a americano
    Then I should not receive a latte
