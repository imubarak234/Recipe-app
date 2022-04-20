class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipe_path, status: :see_other
  end
end
