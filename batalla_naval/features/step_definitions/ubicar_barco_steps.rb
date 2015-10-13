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