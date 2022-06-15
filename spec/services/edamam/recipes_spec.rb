require 'rails_helper'
require 'support/edamam_recipes_stub'

RSpec.describe Edamam::Recipes do
  before do
    edamam_recipes_api_request
  end

  let(:result) do
    parsed_response = JSON.parse(api_response.to_json)
    parsed_response['hits'].map do |recipe|
      Recipe.new(
        recipe['recipe']['label'],
        recipe['recipe']['uri'].split("#").last.gsub("recipe_", ""),
        recipe['recipe']['image']
      )
    end
  end

  context 'with recipe content_type' do
    it 'calls Contentful API and returns all recipes' do
      service_call = described_class.new('chicken').call

      expect(service_call.to_json).to eq result.to_json
    end
  end
end
