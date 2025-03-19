class SessionsController < ApplicationController
  def new
    # renders the login form (view/sessions/new.html.erb)
  end 

  def create 
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id 
      redirect_to posts_path, notice: 'Logged in successfully!'
    else 
      render :new, alert: 'Invalid email or password.'
    end 
  end 

  def destroy 
    session.delete(:user_id)
    redirect_to login_path, notice: 'Logged out successfully!'
  end
end
