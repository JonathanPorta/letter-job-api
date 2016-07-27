class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def current_user
    if session[:user_id]
      logger.warn 'Getting user because the session had a user_id.'
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    else
      logger.warn 'No user currently logged in!'
      @current_user = nil
    end

    rescue ActiveRecord::RecordNotFound => e
      # The user has an invalid session, so let's kill it off.
      logger.warn "A session was provided, but that user isn't in the database: #{ e }"
      session[:user_id] = nil
  end

   helper_method :current_user
end
