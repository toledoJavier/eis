require_relative "../../model/batalla_naval"
Given(/^una batalla naval sin barcos$/) do
  @batalla_naval= BatallaNaval.new
end

When(/^ubico un submarino en (\w\d+)$/) do |posicion|
  @batalla_naval.colocar_barco_en(posicion, "submarino", "horizontal")
end

Then(/^se posiciona correctamente$/) do
  expect(@batalla_naval.contenido_de_la_posicion("A3")).to be_a Submarino
end

Given(/^una batalla naval con un crucero horizontal en (\w\d+)$/) do |posicion|
  @batalla_naval= BatallaNaval.new
  @batalla_naval.colocar_barco_en(posicion, "crucero", "horizontal")
end

When(/^intento ubicar un destructor vertical en (\w\d+)$/) do |posicion|
  begin
    @batalla_naval.colocar_barco_en(posicion, "destructor", "vertical")
  rescue PosicionOcupadaException => e
    @posicion_ocupada_e = e
  end
end

Then(/^no se posiciona por que la posicion (\w\d+) esta ocupada$/) do |posicion|
  expect(@posicion_ocupada_e).to be_a PosicionOcupadaException
end

Given(/^una batalla naval de (\d+)x(\d+)$/) do |arg1, arg2|
  @batalla_naval= BatallaNaval.new
end

When(/^intento ubicar un crucero en la posicion (\w\d+)$/) do |posicion|
  begin
    @batalla_naval.colocar_barco_en(posicion, "crucero", "vertical")
  rescue PosicionInvalidaException => e
    @posicion_invalida_e = e
  end
end

Then(/^no se posiciona por que esta fuera del tablero$/) do
  expect(@posicion_invalida_e).to be_a PosicionInvalidaException
end
