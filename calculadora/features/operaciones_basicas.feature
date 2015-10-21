Feature: Operaciones basicas

  Scenario: suma
    Given un operando es 1
    And otro operando es 2
    When los sumo
    Then el resultado es 3
  
  Scenario: resta
    Given un operando es 8
    And otro operando es 3
    When los resto
    Then el resultado es 5  
  
  @wip
  Scenario: resta resultado negativo
    Given un operando es 5
    And otro operando es 7
    When los resto
    Then el resultado es -2
  
  @wip
  Scenario: promedio
    Given un operando es 6
    And otro operando es 8
    When los promedio
    Then el resultado es 7

