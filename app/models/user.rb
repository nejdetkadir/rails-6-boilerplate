class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :omniauthable, omniauth_providers: [:google_oauth2, :github, :facebook]

  # custom callbacks
  after_initialize :set_default_role, :if => :new_record?
  after_initialize :set_default_provider, :if => :new_record?

  # enumerables
  enum role: [:user, :admin]
  enum provider: [:google, :github, :facebook, :normal]

  def as_json(*_args)
    {
      id: id,
      email: email,
      role: role,
      provider: provider,
      sign_in_count: sign_in_count,
      current_sign_in_at: current_sign_in_at,
      last_sign_in_at: last_sign_in_at,
      current_sign_in_ip: current_sign_in_ip,
      last_sign_in_ip: last_sign_in_ip
    }
  end

  def set_default_role
    self.role ||= :user
  end

  def set_default_provider
    self.provider ||= :normal
  end

  def self.from_omniauth(access_token, provider)
    data = access_token.info
    user = User.where(email: data['email']).first
    unless user
      user = User.create(email: data['email'],password: Devise.friendly_token[0,20], provider: provider)
    end
    user
  end
end
