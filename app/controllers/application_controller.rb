class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_devise_params, if: :devise_controller?

  def configure_devise_params
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:name, :batch, :dept, :course, :email, :password, :password_confirmation)
    end
  end

  def has_role?(current_user, role)
    return !!current_user.roles.find_by_name(role.to_s)
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to "/", :alert => exception.message
  end

end
