class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(pa)
  end

  def destroy
  end
end
