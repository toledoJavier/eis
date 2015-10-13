Feature: Como usuario quiero ubicar mis barcos
  @wip
  Scenario: Ubico mi barco exitosamente
    Given una batalla naval sin barcos
    When ubico un barco en A3
    Then se posiciona correctamente
  
  @wip
  Scenario: No se puede ubicar un barco en una posición ya ocupada
    Given una batalla naval con un crucero horizontal en F4
    When intento ubicar un destructor vertical en E4
    Then no se posiciona por que la posicion F4 esta ocupada
  
  @wip
  Scenario: No puedo ubicar mi barco en una posición fuera del tablero
    Given una batalla naval de 10x10
    When intento ubicar un barco en la posicion A11
    Then no se posiciona por que esta fuera del tablero

