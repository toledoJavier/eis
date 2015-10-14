require_relative "../../model/batalla_naval"

Given(/^una batalla naval sin ningun tipo de barco$/) do
  @batalla_naval= BatallaNaval.new
end

When(/^hago un disparo en (\w\d+)$/) do |posicion|
  @resultado_disparo= @batalla_naval.disparar_en(posicion)
end

Then(/^toco agua$/) do
  expect(@resultado_disparo).to eq "Agua"
end

Given(/^una batalla naval con un crucero vertical en (\w\d+)$/) do |posicion|
  @batalla_naval= BatallaNaval.new
  @batalla_naval.colocar_barco_en(posicion, "crucero", "vertical")
end

When(/^hago un disparo al crucero en (\w\d+)$/) do |posicion|
  @resultado_disparo= @batalla_naval.disparar_en(posicion)
end

Then(/^el barco queda averiado$/) do
  expect(@resultado_disparo).to eq "Barco Averiado"
end
