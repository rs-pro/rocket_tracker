require 'resolv'

module RocketTracker
  class Backend
    def initialize(config)
      @socket = UDPSocket.new
      @ip = config.host_ip.blank? ? Resolv.getaddress(config.host) : config.host_ip
      @port = config.port
    end

    def send(payload)
      @socket.send(payload, 0, @host, @port)
    end

    def send_pageview(ip, url, controller, action, user_agent, start, finish)
      
    end
  end
end
