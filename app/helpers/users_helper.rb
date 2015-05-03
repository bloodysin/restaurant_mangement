module UsersHelper
  def logged_in_user
    unless logged_in?
      flash[:danger] = "请先登录"
      redirect_to root_url
    end
  end
end
