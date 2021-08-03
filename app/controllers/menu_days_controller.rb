# frozen_string_literal: true

class MenuDaysController < ApplicationController
  def index
    @menu_days = MenuDay.order(:day)

    @dishes_for_menu_day = MenuDay.find_by!(day: MenuDay::WEEK_DAYS['Monday']).dishes
  end

  def show
    @dishes_for_menu_day = MenuDay.find(params[:id]).dishes
  end
end
