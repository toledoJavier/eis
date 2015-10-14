Feature: Como usuario quiero disparar a los barcos enemigos

  Scenario: Disparo y toco agua
    Given una batalla naval sin ningun tipo de barco
    When hago un disparo en J10
    Then toco agua
  
  Scenario: Disparo y toco un barco pero no lo hundo
    Given una batalla naval con un crucero vertical en C5
    When hago un disparo al crucero en D5
    Then el barco queda averiado
  
  Scenario: Disparo y toco un barco y lo hundo
    Given una batalla naval con un destructor vertical en E3 con impactos en E3 y F3
    When hago un disparo al destructor en G3
    Then lo hundo