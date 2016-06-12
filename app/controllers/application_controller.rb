class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?
  #before_filter :set_time_zone, if: :user_signed_in?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  private
  def user_not_authorized
  		flash[:notice] = 'Você não tem permissão para fazer esta ação'
  		redirect_to(request.referrer || users_path)
	end
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) { |u|
      u.permit(:password, :password_confirmation, :current_password, :role)
    }
  end
  def correct_user?
    @user = User.find(params[:id])
        unless current_user == @user
              redirect_to users_path
          end
  end
  def set_time_zone
      Time.zone = current_user.time_zone
  end
end
