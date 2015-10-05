module ApplicationHelper

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Доступ ограничен."
      redirect_to root_url
    end
  end
end
