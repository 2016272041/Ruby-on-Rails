class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email
  end

  def destroy
  end
end
