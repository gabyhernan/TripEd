class SessionsController < ApplicationController

  def create
    user = User.find_by(params[:email])

    if user
      sessions[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to 'users/new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
