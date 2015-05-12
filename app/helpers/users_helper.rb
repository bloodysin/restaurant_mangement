module UsersHelper
  def logged_in_user
    unless logged_in?
      flash[:danger] = "请先登录"
      redirect_to root_url
    end
  end

  def student_helper
    @cuisines = UserCuisine.where(user_id: params[:id])
    @mon_mid = []
    @mon_eve = []
    @tue_mid = []
    @tue_eve = []
    @wed_mid = []
    @wed_eve = []
    @thu_mid = []
    @thu_eve = []
    @fri_mid = []
    @fri_eve = []

    @cuisines.each do |cuisine|
      if cuisine.week == "Monday"
        if(!cuisine.is_evening)
          push_to_array(@mon_mid, cuisine.cuisine_id)
        else
          push_to_array(@mon_eve, cuisine.cuisine_id)
        end
      elsif cuisine.week == "Tuesday"
        if(!cuisine.is_evening)
          push_to_array(@tue_mid, cuisine.cuisine_id)
        else
          push_to_array(@tue_eve, cuisine.cuisine_id)
        end
      elsif cuisine.week == "Wednesday"
        if(!cuisine.is_evening)
          push_to_array(@wed_mid, cuisine.cuisine_id)
        else
          push_to_array(@wed_eve, cuisine.cuisine_id)
        end
      elsif cuisine.week == "Thursday"
        if(!cuisine.is_evening)
          push_to_array(@thu_mid, cuisine.cuisine_id)
        else
          push_to_array(@thu_eve, cuisine.cuisine_id)
        end
      elsif cuisine.week == "Friday"
        if(!cuisine.is_evening)
          push_to_array(@fri_mid, cuisine.cuisine_id)
        else
          push_to_array(@fri_eve, cuisine.cuisine_id)
        end
      end
    end
  end

  def push_to_array(arr, element)
    arr.push(Cuisine.find(element))
  end
end
