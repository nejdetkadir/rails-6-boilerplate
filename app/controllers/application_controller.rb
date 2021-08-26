class ApplicationController < ActionController::Base
  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private
  
  def user_not_authorized
    flash[:alert] = 'You are not authorized to view this page'
    redirect_to(request.referer || root_path)
  end
end
