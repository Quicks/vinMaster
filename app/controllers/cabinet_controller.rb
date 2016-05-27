class CabinetController < ApplicationController

  def set_cabinet_url
    redirect_to set_profile_path_by_user_role(current_user)
  end

  private

  def set_profile_path_by_user_role(user)
    # this function return path to user module by user role
    # if user is performer redirect to performer path
    # else if user is customer redirect to customer path(now we going to root path,because i don't realize that scenario)
    # else if user is admin redirect to admin path(now we going to root path,because i don't realize that scenario)
    # by default redirect to root_path
    unless user.nil?
      if user.is_performer?
        module_performer_show_path(user.nick_name)
      elsif user.is_customer?
        root_path
      elsif user.is_admin?
        root_path
      end
    else
      root_path
    end
  end
end
