class HomeController < ApplicationController
  def index
    if user_logged_in?
      redirect_to quizzes 
    else
  end
end

