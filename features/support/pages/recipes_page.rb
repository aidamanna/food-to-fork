class RecipesPage

  include PageObject

  page_url $data['recipes_url']

  text_field(:search_box, id:'typeahead')
  spans(:recipes_name_list, css:'.item.masonry-brick .recipe-name')


  def search_recipe(text)
    self.search_box = text
    self.search_box_element.send_keys(:enter)
  end

  def check_recipes_list(text)
    words = text.split
    self.recipes_name_list_elements.each do |recipe|
      recipe_matches_search = words.all? { |word| recipe.text.downcase.include?(word) }
      expect(recipe_matches_search).to eql(true), "ERROR: The recipe #{recipe.text} does not match the search"
    end
  end

end