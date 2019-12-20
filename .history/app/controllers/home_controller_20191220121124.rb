class HomeController < ApplicationController
  def index
  end

  def index
    if user_logged_in?
      redirect_ 
  end

end

