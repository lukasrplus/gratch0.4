Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?

if Rails.env.development?
    CREDENTIALS_TWITTER = YAML.load_file(Rails.root.join('config','twitter.yml'))
end


  API_KEY = Rails.env.development? ? CREDENTIALS_TWITTER['key'] : ENV['API_KEY']
  API_SECRET = Rails.env.development? ? CREDENTIALS_TWITTER['secret'] : ENV['API_SECRET']

  provider :twitter, API_KEY, API_SECRET

end

