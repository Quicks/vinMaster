class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_user

  def check_user
    @user = User.get_user_by_nick_name(params[:nick]).first
    unless @user.eql? current_user
      redirect_to_back
    end
  end
end
