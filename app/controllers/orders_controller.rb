class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new(order_params)
  end

  def create
    @order = current_user.orders.new(order_params)
    if @order.save
        redirect_to dishes_path, notice: 'Order has been successfully created'
      else
        redirect_to dishes_path
    end
  end

  private

  def order_params
    params.require(:order).permit(:user_id, :soup_id, :main_dish_id, :beverage_id)
  end
end
