Given(/^I am registered in Food2Fork$/) do
  register
end

When(/^I search for a recipe \[text:(.*)\]$/)do |text|
  @text = text
  search_recipe(@text)
end

Then(/^I should get a list with the recipes that include my search$/) do
  check_recipies_list(@text)
end