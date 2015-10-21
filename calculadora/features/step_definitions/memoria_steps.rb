Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |cantidad|
  expect(page).to have_content("Operaciones realizadas: #{cantidad}")
end

Given(/^hago una suma$/) do
  visit 'calculadora'
  fill_in 'operando1', with: 6
  fill_in 'operando2', with: 10
  click_button 'sumar'
end

Given(/^hago una resta$/) do
  visit 'calculadora'
  fill_in 'operando1', with: 9
  fill_in 'operando2', with: 3
  click_button 'restar'
end

