module Edamam
  class Base

    DEFAULT_PARAMS = {
      type: 'public',
      app_id: ENV['EDAMAM_API_APP_ID'],
      app_key: ENV['EDAMAM_API_APP_KEY']
    }.freeze

    def connection
      @connection ||= Faraday.new(
        url: 'https://api.edamam.com',
        params: DEFAULT_PARAMS,
        headers: {'Content-Type' => 'application/json'}
      )
    end

    def recipes(query)
      connection.get("/api/recipes/v2?#{query}")
    end
  end
end
