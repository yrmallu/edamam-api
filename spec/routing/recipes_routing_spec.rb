require "rails_helper"

RSpec.describe RecipesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/recipes").to route_to("recipes#index")
    end
  end
end
