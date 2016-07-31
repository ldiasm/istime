class BabytimesController < ApplicationController
  def index
    @foods = Babytime.all
  end

  def new
    @food = Babytime.new
    @foods = Babytime.all
    render 'index'
  end

  def create
    @food = Babytime.new(food_params)
    @food.save
    redirect_to '/'
  end

  def update
    @food = Babytime.find(params[:id])
    @food.update(food_params)
    render 'index'
  end

  def delete
    Babytime.find(params[:id]).destroy
    render 'index'
  end

  def show
    @food = Babytime.new(params[:id])
  end

  private
  def food_params
    params.require(:babytime).permit(:name)
  end
end
