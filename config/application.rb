require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'fog/aws'
require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Nomster
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # add the fonts path
    config.assets.paths << "#{Rails.root}/app/assets/fonts"

    # precompile additional assets
    config.assets.precompile += %w( .svg .eot .woff .ttf 
    )

    config.assets.initialize_on_precompile = false
  end
end

