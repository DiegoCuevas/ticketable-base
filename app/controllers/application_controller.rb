class ApplicationController < ActionController::Base
  include Pundit

  def current_user
    User.find_by(role: params[:role])
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  
  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to "/tickets?role=member"
  end
end
