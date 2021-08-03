# frozen_string_literal: true

class DishesController < ApplicationController
  before_action :set_dish, only: %i[show edit update destroy]

  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to @dish, notice: 'Dish was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @dish.update(dish_params)
      redirect_to @dish
    else
      render :edit
    end
  end

  def destroy
    @dish.destroy
    redirect_to 'index'
  end

  private
  
  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :dish_type)
  end
end
