module Rack
  class StayingAlive
    HEADERS = {'Content-Type' => 'text/plain'}

    def initialize(app, options = {})
      @app = app

      @headers = HEADERS.dup
      @headers.merge!(options[:headers]) if options[:headers]

      @routes = options[:routes] || ['/ah-ha-ha-ha']
      @response = options[:response] || 'staying alive'
    end

    def call(env)
      if @routes.include?(env['PATH_INFO'])
        [200, @headers, [@response]]
      else
        @app.call(env)
      end
    end
  end
end
