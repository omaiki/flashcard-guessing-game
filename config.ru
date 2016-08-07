# Require config/environment.rb
require ::File.expand_path('../config/environment',  __FILE__)

set :app_file, __FILE__

enable :sessions
  set :session_secret, ENV['SESSION_SECRET'] || 'secret'

run Sinatra::Application
