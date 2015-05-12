class ChooseController < ApplicationController
  def show
    @cuisines_today = []
    cuisine_ids_today(params[:week], params[:is_evening]).each do |p|
      @cuisines_today.push(Cuisine.find(p.cuisine_id))
    end
  end

  def update
    list = chosen_params["list"]
    chosen_clear
    list.each do |id|
        p = UserCuisine.new
        p.week = params[:week].to_i
        p.is_evening = params[:is_evening]
        p.cuisine_id = id.to_i
        p.user_id = params[:id]
        p.save!
    end

    redirect_to :back
  end
  
  private
  
  def chosen_params
    params.require(:chosen).permit(:list => [])
  end

  def chosen_clear
    UserCuisine.where(user_id: params[:id], week: params[:week].to_i, is_evening: params[:is_evening]).each do |p|
      p.destroy
    end
  end

end
