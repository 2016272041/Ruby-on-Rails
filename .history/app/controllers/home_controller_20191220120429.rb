class HomeController < ApplicationController
  def index
    if user_logged_in?
      redirect_to quizzes_path
    else
      redirect_to new_user_
  end
end

