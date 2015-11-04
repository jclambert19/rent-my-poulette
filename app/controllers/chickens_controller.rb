class ChickensController < ApplicationController
  before_action :set_chicken, only: [:show]

  def index
    @chickens = Chicken.all
  end

  def show
  end

  def new
    @chicken = Chicken.new
  end

  def create
    @chicken = Chicken.new(chicken_params)
    @chicken.save
    redirect_to chickens_path
  end


private

  def set_chicken
    @chicken = Chicken.find(params[:id])
  end

  def chicken_params
    params.require(:chicken).permit(:name, :description, :price_per_day)
  end
end
