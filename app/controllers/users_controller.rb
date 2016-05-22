class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.get_user_by_nick_name(params[:nick]).first
    unless @user.eql? current_user
      redirect_to_back
    end
  end
end
