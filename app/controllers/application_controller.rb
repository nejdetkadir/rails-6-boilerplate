class ApplicationController < ActionController::Base
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  prepend_before_action :configure_recaptcha, if: :devise_controller?

  def configure_recaptcha
    Recaptcha.configure do |config|
      config.site_key = Setting.recaptcha_site_key
      config.secret_key = Setting.recaptcha_secret_key
    end
  end

  private
  
  def user_not_authorized
    flash[:alert] = 'You are not authorized to view this page'
    redirect_to(request.referer || root_path)
  end
end
