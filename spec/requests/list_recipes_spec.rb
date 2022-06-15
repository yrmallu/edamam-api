require 'rails_helper'
require 'support/edamam_recipes_stub'

RSpec.describe 'GET /recipes' do
  let(:path) { recipes_url }
  let(:params) { { search: 'chicken' } }

  before do
    edamam_recipes_api_request
  end

  context 'with valid params' do
    it 'will retuns all recipes' do
      get path, params: params

      expect(response.status).to be(200)
    end
  end
end
