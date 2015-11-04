class ChickenController < ApplicationController
  before_action :set_chicken, only: [:show, :edit, :update, :destroy]

  def index
    @chicken = Chicken.all
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

  def edit
  end

  def update
    @chicken.update(chicken_params)
    redirect_to chickens_path
  end

  def destroy
    @chickens.delete
    redirect_to chickens_path
  end



private

  def set_chicken
    @chicken = Chicken.find(params[:id])
  end

  def chicken_params
    params.require(:chicken).permit(:????)
  end
end
