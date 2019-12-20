class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[])
  end

  def destroy
  end
end
