class DosesController < ApplicationController


  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.ingredient = set_ingredient

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      redirect_to cocktails_path
    end

    def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail_id)
  end

 private

  def dose_params
    params.require(:dose).permit(:amount)
  end
end



