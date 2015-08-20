class DosesController < ApplicationController


  def new
    @dose = Dose.new
  end

  def create
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
