require "rocket_tracker/version"

require 'bindata'
require 'yajl'

require "rocket_tracker/configuration"

require "rocket_tracker/engine"
require "rocket_tracker/railtie"

require "rocket_tracker/mtime"
require "rocket_tracker/page_view"
require "rocket_tracker/backend"

require "rocket_tracker/view_helpers"
require "rocket_tracker/engine"
require "rocket_tracker/railtie"

module RocketTracker
  class << self
    def config
      @config ||= Configuration.new
    end

    def configure
      if block_given?
        yield(config)
      else
        raise 'RocketTracker.configure requires a block'
      end
    end

    def subscribe!
      ActiveSupport::Notifications.subscribe('render') do |name, start, finish, id, payload|
        p name, start, finish, id
      end
    end

    def backend
      if config.api_key.blank?
        puts "[WARN] RocketTracker is not configured, please set api key"
        nil
      else
        @backend ||= Backend.new(config)
      end
    end
  end
end

