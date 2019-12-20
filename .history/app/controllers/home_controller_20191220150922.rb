class HomeController < ApplicationController
  def index
  end

  def index
    if user_logged_in?
      redirect_to quizzes_path
    else
      redirect_to new_user_sessions_path 
  end

  def user_board
    events = Event.where(user)
  end

end

