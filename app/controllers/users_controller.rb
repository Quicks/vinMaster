class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.get_user_by_nick_name(params[:nick]).first
  end
end
