module RocketTracker
  class Configuration
    attr_accessor :api_key
    attr_accessor :js_key
    attr_accessor :host
    attr_accessor :ip
    attr_accessor :proto
    attr_accessor :port
    attr_accessor :envs
    attr_accessor :project

    def initialize
      @host = "rtrack.ru"
      @proto = "http"
      @port = 80
      @envs = %w(development production)
    end

    attr_writer :js_endpoint
    def js_endpoint
      @js_endpoint ||= get_endpoint
    end

    private
    def get_endpoint
      "#{RocketTracker.config.proto}://#{RocketTracker.config.host}/pageload/#{RocketTracker.config.project}/#{RocketTracker.config.js_key}"
    end
  end
end

