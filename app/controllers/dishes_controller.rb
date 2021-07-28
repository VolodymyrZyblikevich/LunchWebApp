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
    respond_to do |format|
      if @dish.save
        format.html { redirect_to @dish, notice: "Dish was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    if @dish.update(dish_params)
      render :index
    else
      render :edit
    end
  end

  def destroy
    @dish.destroy
    render :index
  end

  private

  def user_not_authorized
    flash[:warning] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name, :price, :dish_type)
  end
end
