class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    handle_auth "Google", :google
  end

  def github
    handle_auth "Github", :github
  end

  def facebook
    handle_auth "Facebook", :facebook
  end

  def handle_auth(kind, provider)
    @user = User.from_omniauth(request.env['omniauth.auth'], provider)

    if @user.persisted?
      flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: kind
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.#{kind.downcase}_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can overflow some session stores
      redirect_to new_user_registration_url, alert: @user.errors.full_messages.join("\n")
    end
  end
end