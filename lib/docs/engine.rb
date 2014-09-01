module Docs
  class Engine < ::Rails::Engine
    require 'jquery-rails'
    require 'coffee-rails'
    isolate_namespace Docs

    config.generators do |g|
      g.test_framework :rspec, view_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
