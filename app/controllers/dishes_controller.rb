# frozen_string_literal: true

class DishesController < ApplicationController
  before_action :set_dish, only: %i[show edit update destroy]

  def index
    @dish = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to @dish, notice: 'Dish has been successfully created'
    else
      render "new", status: :unprocessable_entity
    end
  end

  def update
    if @dishes.update(dish_params)
      redirect_to @dishes
    else
      render :edit
    end
  end

  def destroy
    @dishes.destroy

    redirect_to dishes_path
  end

  private
  
  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :dish_type)
  end
end
