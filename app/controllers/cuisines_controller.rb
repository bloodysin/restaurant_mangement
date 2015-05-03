class CuisinesController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :index]

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      render 'users/show'
    else
      render 'new'
    end
  end

  def index
    @cuisines = Cuisine.all
  end

  private

  def cuisine_params
    params.require(:cuisine).permit(:name, :ingredients)
  end
end
