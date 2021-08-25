# RailsSettings Model
class Setting < RailsSettings::Base
  # cache_prefix { "v1" }

  # Define your fields
  field :host, type: :string, default: "http://localhost:3000"
  # field :default_locale, default: "en", type: :string
  # field :confirmable_enable, default: "0", type: :boolean
  # field :admin_emails, default: "admin@rubyonrails.org", type: :array
  
  # Omniauths
  field :omniauth_google_client_id, default: (ENV["OA_GOOGLE_CLIENT_ID"] || ""), type: :string
  field :omniauth_google_client_secret, default: (ENV["OA_GOOGLE_SECRET"] || ""), type: :string
  field :omniauth_github_client_id, default: (ENV["OA_GITHUB_CLIENT_ID"] || ""), type: :string
  field :omniauth_github_client_secret, default: (ENV["OA_GITHUB_SECRET"] || ""), type: :string
end
