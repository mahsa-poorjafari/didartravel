require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'pdfkit'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RadanTravel
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    #config.i18n.default_locale = :en    
    
    config.autoload_paths += %W(#{config.root}/app/models/ckeditor)
    config.assets.initialize_on_precompile = false
    config.serve_static_assets = true
    config.assets.enabled = true    
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')        
    
    config.assets.precompile += %w( .svg .eot .woff .ttf )
    
    Rails.application.config.assets.precompile += %w( responsive.css )
    Rails.application.config.assets.precompile += %w( print.css )
    Rails.application.config.assets.precompile += %w( lightbox.js )
    
    Rails.application.config.assets.precompile += %w( jquery.kinetic.min.js )
    Rails.application.config.assets.precompile += %w( jquery.mousewheel.min.js )
    Rails.application.config.assets.precompile += %w( jquery.smoothdivscroll-1.3-min.js )
    
    
  end
end
