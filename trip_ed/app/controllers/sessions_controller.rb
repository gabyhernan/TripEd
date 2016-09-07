class SessionsController < ApplicationController

  def create
    user = User.find_by(params[:email])
    location = Location.find_by(params[:email])

    if user
      sessions[:user_id] = user.id
      session[:type] = 'user'
      redirect_to '/'
    elsif location
      sessions[:user_id] = location.id
      session[:type] = 'location'
      redirect_to '/'
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
