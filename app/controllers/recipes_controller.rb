class RecipesController < ApplicationController
	def index
		@recipes = Edamam::Recipes.new(params[:search]).call
	end
end