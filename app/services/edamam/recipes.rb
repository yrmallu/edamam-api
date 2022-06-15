module Edamam
  class Recipes < Edamam::Base
    attr_reader :search_text, :next_page

    DEFAULT_DISPLAY_SEARCH_RESULTS = 30.freeze

    def initialize(search_text)
      @search_text = search_text
    end

    def call
      (search + next_page_results).first(DEFAULT_DISPLAY_SEARCH_RESULTS)
    end

    private

    def search
      response = recipes(query)

      parse_the_response(response)
    end

    def next_page_results
      return [] unless next_page
      response = connection.get(next_page)

      parse_the_response(response)
    end

    def parse_the_response(response)
      parsed_response = JSON.parse(response.body)

      return [] if parsed_response['hits'].empty?

      @next_page = parsed_response['_links'].present? ? parsed_response['_links']['next']['href'] : nil

      parsed_response['hits'].map do |recipe|
        Recipe.new(
          recipe['recipe']['label'],
          recipe['recipe']['uri'].split("#").last.gsub("recipe_", ""),
          recipe['recipe']['image']
        )
      end
    end

    def query
      "q=#{search_text}"
    end
  end
end
