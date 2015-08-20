class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [ :show, :destroy ]
  def index
    @coktail = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
  end

  def create
    @cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Coktail.destroy(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

private

def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
