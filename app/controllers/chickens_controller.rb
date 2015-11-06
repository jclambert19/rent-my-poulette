class ChickensController < ApplicationController
  before_action :set_chicken, only: [:show, :edit, :update, :destroy]

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
  if @chicken.save
    redirect_to chickens_path
  else
    render :new
  end
end

  def edit
  end

  def update
    @chicken.update(chicken_params)
    redirect_to chickens_path
  end

  def destroy

    @chickens.destroy
    redirect_to chickens_path
  end



private

  def set_chicken
    @chicken = Chicken.find(params[:id])
  end

  def chicken_params
    params.require(:chicken).permit(:name, :description, :address, :price_per_day, :user, :picture)
  end

end
