# RailsSettings Model
class Setting < RailsSettings::Base
  cache_prefix { "v1" }

  # Define your fields
  field :host, type: :string, default: "http://localhost:3000"
  # field :default_locale, default: "en", type: :string
  # field :confirmable_enable, default: "0", type: :boolean
  # field :admin_emails, default: "admin@rubyonrails.org", type: :array
  
  # Omniauths
  field :omniauth_google_client_id, default: "", type: :string
  field :omniauth_google_client_secret, default: "", type: :string
  field :omniauth_github_client_id, default: "", type: :string
  field :omniauth_github_client_secret, default: "", type: :string
  field :omniauth_facebook_client_id, default: "", type: :string
  field :omniauth_facebook_client_secret, default: "", type: :string

  # Google Recaptcha
  field :recaptcha_site_key, default: "", type: :string
  field :recaptcha_secret_key, default: "", type: :string
end
