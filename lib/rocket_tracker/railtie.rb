require 'rocket_tracker/view_helpers'
module RocketTracker
  class Railtie < Rails::Railtie
    initializer "rocket_Tracker.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end

    initializer "rocket_tracker.subscribe" do
      RocketTracker.subscribe!
    end
  end
end

