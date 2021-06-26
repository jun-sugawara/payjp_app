class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :devise_parameter_sanitizer, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) 
  end
end
