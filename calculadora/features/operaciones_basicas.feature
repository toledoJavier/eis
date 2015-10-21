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
  
  Scenario: promedio
    Given un operando es 6
    And otro operando es 8
    When los promedio
    Then el resultado es 7

