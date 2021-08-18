# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  before_action :configure_permitted_parameters, if:  :devise_controller?

  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :surname])
  end
end
