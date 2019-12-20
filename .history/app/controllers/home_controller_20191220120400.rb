class HomeController < ApplicationController
  def index
    if user_logged_in?
      redirect_to quiz
    else
  end
end

