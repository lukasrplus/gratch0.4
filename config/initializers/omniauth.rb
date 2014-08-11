Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?

if Rails.env.development?
    CREDENTIALS_TWITTER = YAML.load_file(Rails.root.join('config','twitter.yml'))
    CREDENTIALS_FACEBOOK = YAML.load_file(Rails.root.join('config', 'facebook.yml'))
end

# TWITTER
  API_KEY = Rails.env.development? ? CREDENTIALS_TWITTER['key'] : ENV['API_KEY']
  API_SECRET = Rails.env.development? ? CREDENTIALS_TWITTER['secret'] : ENV['API_SECRET']

# FACEBOOK
  FACEBOOK_APP_ID = Rails.env.development? ? CREDENTIALS_FACEBOOK['app_id'] : ENV['FACEBOOK_APP_ID']
  FACEBOOK_SECRET = Rails.env.development? ? CREDENTIALS_FACEBOOK['secret'] : ENV['FACEBOOK_SECRET']

  provider :twitter, API_KEY, API_SECRET

  provider :facebook, FACEBOOK_APP_ID, FACEBOOK_SECRET,
            :scope => 'email,user_birthday,read_stream', :display => 'popup', :info_fields => 'first_name, gender, hometown'


end

