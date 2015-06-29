require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups)

module Startuplife
  class Application < Rails::Application
    config.middleware.use Rack::GoogleAnalytics, :tracker => 'UA-64520269-1'
    config.time_zone = 'Central Time (US & Canada)'
    config.i18n.default_locale = 'es-MX'
    config.active_record.raise_in_transactional_callbacks = true
  end
end
