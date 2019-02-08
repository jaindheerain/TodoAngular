require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.action_dispatch.default_headers = {
        'Access-Control-Allow-Origin' => '*',
        'Access-Control-Request-Method' => 'GET, PATCH, PUT, POST, DELETE',
        'Access-Control-Allow-Headers:' => 'X-Requested-With, Content-Type, Accept'
    }
    config.action_controller.forgery_protection_origin_check =false
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
