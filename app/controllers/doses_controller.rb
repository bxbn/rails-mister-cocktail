class DosesController < ApplicationController
  # class CocktailsController < ApplicationController
  #before_action :set_dose, only: [:create, :destroy]

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient_id = params[:dose][:ingredient_id]
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  # end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete
  end

  # private

  # def set_cocktail
  #   @cocktail = Cocktail.find(params[:id])
  # end

  def dose_params
    params.require(:dose).permit(:description, :ingredient)
  end
end

