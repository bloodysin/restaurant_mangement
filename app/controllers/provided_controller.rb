class ProvidedController < ApplicationController
  def show
    @cuisines = Cuisine.all
    @newcuisine = []

    @cuisines_today = []
    cuisine_ids_today(params[:week], params[:is_evening]).each do |p|
      @cuisines_today.push(Cuisine.find(p.cuisine_id))
    end
  end

  def update
    list = provided_params["list"]
    provided_clear
    list.each do |id|
        p = Provided.new
        p.week = params[:week].to_i
        p.is_evening = params[:is_evening]
        p.cuisine_id = id.to_i
        p.save!
    end

    render 'users/show'
  end

  private

  def cuisine_ids_today(week, is_evening)
    Provided.where(week: week, is_evening: is_evening)
  end

  def provided_params
    params.require(:provided).permit(:week, :is_evening, :list => [])
  end

  def provided_clear
    Provided.where(week: params[:week].to_i, is_evening: params[:is_evening]).each do |p|
      p.destroy
    end
  end
end
