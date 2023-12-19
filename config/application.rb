require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Portfolio
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.generators do |g|
      g.skip_routes true 
      g.helper          false     
      g.test_framework  nil
    end

    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'
  end
end
