module SearchRecipeFrontSteps

  def register
    visit_page(LogInPage)
    on_page(LogInPage).register
  end

  def search_recipe(text)
    visit_page(RecipesPage)
    on_page(RecipesPage).search_recipe(text)
  end

  def check_recipies_list(text)
    on_page(RecipesPage).check_recipes_list(text)
  end

end

World(SearchRecipeFrontSteps) if ENV['LEVEL'] == 'front'
