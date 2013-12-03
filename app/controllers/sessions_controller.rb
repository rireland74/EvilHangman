class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])
    #if :password == params[:password]
      session[:user_id] = user.id
      redirect_to hangman_url
    #else
      #redirect_to login_url, alert: 'Invalid User/Password combination'
    #end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Logged out"
  end

  def hangman
  end
end
