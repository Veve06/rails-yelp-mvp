class RestaurantController < ApplicationController

  def index
    @restaurants = Restaurant.all

  end

  def show
    @restaurant = restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.all

  end

  def create
    @restaurant = Restaurant.new
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])

  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant = restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end
end
