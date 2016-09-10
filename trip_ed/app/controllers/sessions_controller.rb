class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    location = Location.find_by(email: params[:email])

    if user
      session[:user_id] = user.id
      session[:type] = 'user'
      session[:password_hash] = params[:password_hash]
      session[:school_address] = user.school_address
      redirect_to locations_path
    elsif location
      session[:user_id] = location.id
      session[:type] = 'location'
      session[:password_hash] = params[:password_hash]
      redirect_to locations_path
    else
      redirect_to '/users/new'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:type] = nil
    redirect_to '/'
  end

end
