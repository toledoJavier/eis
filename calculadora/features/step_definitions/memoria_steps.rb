Given(/^no hice operaciones$/) do
  visit 'calculadora'
end

Then(/^la cantidad de operaciones es (\d+)$/) do |cantidad|
  expect(page).to have_content("Operaciones realizadas: #{cantidad}")
end
