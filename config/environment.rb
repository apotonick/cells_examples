# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.2.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')
# uncomment to use cells in engines:
#require File.join(File.dirname(__FILE__), '../vendor/plugins/engines/boot')
require File.join(File.dirname(__FILE__), '../vendor/plugins/cells/boot')


Rails::Initializer.run do |config|
  config.time_zone = 'UTC'

  config.action_controller.session = {
    :session_key => '_cells_examples_session',
    :secret      => 'a181ca86ca07da66ce0d7d5d6266f839e55b962274f80c650bce6f94df537d437bcbb67622c626ce4baecbfcbb6c4f8f80f176acbd044ffb679de97ca0e04616'
  }
end
