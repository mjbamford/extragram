class SessionsController < ApplicationController
  before_action only: [ :new, :create ] do
    redirect_to posts_path if logged_in?
  end

  def create
    if user = User.find_by(username: params[:session][:username]) then
      @current_user = user.authenticate params[:session][:password]
      session[:user_id] = @current_user.id
      redirect_to posts_path, notice: 'Successfully logged in'
    else
      # What to do when username isn't found??
    end
  end

  def destroy
    session.clear
    redirect_to new_session_path, notice: 'You are logged out'
  end
end
