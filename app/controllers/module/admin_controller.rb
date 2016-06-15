class Module::AdminController < ApplicationController
  before_action :check_user




  private

  def check_user
    unless current_user.is_admin?
      redirect_to :back
    end
  end

end
