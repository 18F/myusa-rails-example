Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :myusa, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
  
  provider :myusa, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret, {
    scope: %q(profile.email profile.first_name profile.last_name),
    client_options: {
      site: 'https://alpha.my.usa.gov'
    }
  }
  
end
