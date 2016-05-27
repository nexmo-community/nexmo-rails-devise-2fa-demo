class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :verify_user!, unless: :devise_controller?
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) << :phone_number
  end

  def verify_user!
    start_verification unless verified?
  end

  def start_verification
    result = Nexmo::Client.new.send_verification_request(
      number: current_user.phone_number,
      brand: "Kittens & Co"
    )
    redirect_to edit_verification_path(id: result['request_id'])
  end

  def verified?
    !session[:verified].nil? && !current_user.phone_number.blank?
  end
end
