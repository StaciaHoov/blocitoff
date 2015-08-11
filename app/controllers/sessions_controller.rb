class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    
    if user
      session[:user_id] = user.id
      flash[:notice] = "You are logged in!"
      redirect_to root_url 
    else
      flash[:error] = "Invalid email or password"
      render :new
    end
  end
  
  def destroy
    session[:user_id] = nil
    flash[:notice] = "You are logged out!"
    redirect_to root_url 
  end

end
