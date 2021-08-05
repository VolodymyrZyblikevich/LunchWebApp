# frozen_string_literal: true

class DishesController < ApplicationController
  before_action :set_dish, only: %i[show edit update destroy]

  def index
    @dishes = Dish.all
  end

  def new
    @dishes = Dish.new
  end

  def create
    @dishes = Dish.new(dish_params)
    if @dishes.save
      redirect_to @dishes, notice: 'Dish was successfully created.'
    else
      render :new, status: :unprocessable_entity
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
    @dishes = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :dish_type)
  end
end
