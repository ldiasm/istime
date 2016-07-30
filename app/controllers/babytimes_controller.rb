class BabytimesController < ApplicationController
  def index
    @food = Babytime.new
  end

  def create
    @food = Babytime.new(food_params)
    @food.save
    render 'index'
  end

  def update
    @food = Babytime.find(params[:id])
    @food.update(food_params)
    render 'index'
  end

  private
  def food_params
    params.require(:babytime).permit(:name)
  end
end
