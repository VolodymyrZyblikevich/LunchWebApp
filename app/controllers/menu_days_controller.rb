# frozen_string_literal: true

class MenuDaysController < ApplicationController

  def show
    @dishes_for_menu_day = MenuDay.find_by(params[:day])
  end

end
