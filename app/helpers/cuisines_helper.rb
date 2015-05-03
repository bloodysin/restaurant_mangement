module CuisinesHelper
  def parse_ingredients(ingredients)
    ingredients.split(',').each do |i|
      s = i.split(' ')
      ingredient = Ingredient.new
      ingredient.name = s[0]
      ingredient.weight = s[1]
      ingredient.save
    end
  end
end
