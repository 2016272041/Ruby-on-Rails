class HomeController < ApplicationController
  def index
    if user_logged_in?
    esle
  end
end

