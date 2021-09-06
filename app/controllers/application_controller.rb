# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit

  before_action :configure_permitted_parameters, if:  :devise_controller?

  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end

  private

  def default_url_locale
    {locale: i18n.locale}
  end

  def set_locale
    i18n.locale = extract_locale || i18n.default_locale
  end

  def extract_locale
    parser_locale = params[:locale]
    i18n.availcable_locales.map(&:to_s).include?(parser_locale) ?
      parser_locale.to_sym :
      nil
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :surname])
  end
end
