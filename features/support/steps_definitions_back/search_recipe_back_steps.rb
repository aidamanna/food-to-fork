module SearchRecipeBackSteps

  def register
    @api_key = ENV['API_KEY']
  end

  def search_recipe(text)
    url = ENV['RECIPES_URL']
    @response = RestClient.get url, {:params => {key: @api_key, q: text}}
  end

  def check_recipies_list(text)
    words = text.split
    JSON.parse(@response)['recipes'].each do |recipe|
      recipe_matches_search = words.all? { |word| recipe['title'].downcase.include?(word) }
      expect(recipe_matches_search).to eql(true), "ERROR: The recipe #{recipe['title']} does not match the search"
    end
  end

end

World(SearchRecipeBackSteps) if ENV['LEVEL'] == 'back'
