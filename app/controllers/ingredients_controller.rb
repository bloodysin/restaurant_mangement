class IngredientsController < ApplicationController
  def new
  end

  def create
    @ingredient = Ingredient.new
  end
end
