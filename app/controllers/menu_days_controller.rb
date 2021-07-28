# frozen_string_literal: true
class MenuDaysController < ApplicationController
  def index
    @menu_days = MenuDays.find_by_day(1).dishes
  end

  def select_day
    @menu_days = MenuDays.find_by_day(params[:day]).dishes
  end
end
