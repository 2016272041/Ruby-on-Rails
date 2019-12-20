class HomeController < ApplicationController
  def index
    if user_logged_in?
      redirect
    else
  end
end

