# frozen_string_literal: true

class MenuDaysController < ApplicationController
  def show
    @dishes_for_menu_day = MenuDay.find(params[:id])
  end
end
