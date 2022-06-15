module Edamam
  class Base

    DEFAULT_PARAMS = {
      type: 'public',
      app_id: 'db174bf3',
      app_key: '90597395fbf45646a5f2d9f54d5c8de1'
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
