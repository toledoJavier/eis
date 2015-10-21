Given(/^un operando es (\d+)$/) do |operando|
  visit 'calculadora'
  fill_in 'operando1', with: operando
end

Given(/^otro operando es (\d+)$/) do |otro_operando|
  fill_in 'operando2', with: otro_operando
end

When(/^los sumo$/) do
  click_button 'sumar'
end

Then(/^el resultado es (\d+)$/) do |resultado|
  expect(page).to have_content("Resultado: #{resultado}")
end

When(/^los resto$/) do
  click_button 'restar'
end

When(/^los promedio$/) do
  click_button 'promedio'
end
