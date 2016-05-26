class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :set_cabinet_url

  def set_cabinet_url
    @cabinet_url = set_profile_path_by_user_role(current_user)
  end

  protected

  def redirect_to_back(default = root_url)
    if request.env["HTTP_REFERER"].present? and request.env["HTTP_REFERER"] != request.env["REQUEST_URI"]
      redirect_to :back
    else
      redirect_to default
    end
  end


  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:nick_name,:roles, :email, :password, :password_confirmation,) }
  #   # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :phone, :organisation, :town) }
  # end

  def after_sign_in_path_for(resource)
    set_profile_path_by_user_role(resource)
  end

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def set_profile_path_by_user_role(user)
    # this function return path to user module by user role
    # if user is performer redirect to performer path
    # else if user is customer redirect to customer path(now we going to root path,because i don't realize that scenario)
    # else if user is admin redirect to admin path(now we going to root path,because i don't realize that scenario)
    # by default redirect to nil
    unless user.nil?
      if user.is_performer?
        module_performer_show_path(user.nick_name)
      elsif user.is_customer?
        root_path
      elsif user.is_admin?
        root_path
      else
        nil
      end
    end
  end

end
