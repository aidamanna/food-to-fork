Given(/^I am registered in Food2Fork$/) do
  visit_page(LogInPage)
  on_page(LogInPage).register
end

When(/^I search for a recipe \[text:(.*)\]$/)do |text|
  @text = text
  visit_page(RecipesPage)
  on_page(RecipesPage).search_recipe(@text)
end

Then(/^I should get a list with the recipes that include my search$/) do
  on_page(RecipesPage).check_recipes_list(@text)
end