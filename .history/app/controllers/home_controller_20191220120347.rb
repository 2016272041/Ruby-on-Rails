class HomeController < ApplicationController
  def index
    if user_logged_in?
      redirect_t_path
    else
  end
end

