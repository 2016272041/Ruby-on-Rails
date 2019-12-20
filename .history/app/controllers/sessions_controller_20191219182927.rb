class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    begin
      flash.now[:alert] = "Email or password is invalid"
    rescue => exception
      
    else
      
    end
  end

  def destroy
  end
end
