class VerificationsController < ApplicationController
  skip_before_action :verify_user!

  def edit
  end

  def update
    confirmation = Nexmo::Client.new.check_verification_request(
      request_id: params[:id],
      code: params[:code]
    )
    if confirmation['status'] == '0'
      session[:verified] = true
      redirect_to :root
    else
      render :edit
    end
  end

  private

  def confirm_verification request_id, code
  end
end
