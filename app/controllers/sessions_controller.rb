class SessionsController < ApplicationController
  def create
    @user = User.from_omniauth auth_hash
    current_session @user
    redirect_to '/'
  end

  def destroy
    current_session nil
    redirect_to '/'
  end

  def me
    @user = current_user
    if @user
      render 'users/show'
    else
      render json: {}, status: :unauthorized
    end
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end

  def current_session(user)
    if user
      session[:user_id] = user[:id]
    else
      session[:user_id] = nil
    end
  end
end
