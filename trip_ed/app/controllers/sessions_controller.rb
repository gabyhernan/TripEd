class SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])
    location = Location.find_by(email: params[:email])

    if user
      session[:user_id] = user.id
      session[:type] = 'user'
      redirect_to '/users'
    elsif location
      session[:user_id] = location.id
      session[:type] = 'location'
      # redirect_to '/location'
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
