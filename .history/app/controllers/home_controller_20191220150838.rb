class HomeController < ApplicationController
  def index
  end

  def index
    if user_logged_in?
      redirect_to quizzes_path
    else
      redirect_to 
  end

end

