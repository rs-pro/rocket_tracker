module RocketTracker
  class Engine < ::Rails::Engine
    initializer 'RocketTracker precompile hook', group: :all do |app|
      app.config.assets.precompile += %w[
        rocket_tracker.js
      ]
    end
  end
end
