class SessionsController < ApplicationController
  
  def new
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    session[:token] = auth.credentials.token
    debugger
    redirect_to root_url, :notice => "Signed in!"

  end

  def destroy
    session[:user_id] = nil
    session[:token] = nil
    redirect_to root_url, :notice => "Signed out!"
  end

end
