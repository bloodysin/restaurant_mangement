class StatisticsController < ApplicationController
  def show
    @cuisines = Cuisine.all
    @cuisines.each do |cui|
      cui.count = UserCuisine.where(cuisine_id: cui.id).count
    end
  end
end
