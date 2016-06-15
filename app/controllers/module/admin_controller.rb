class Module::AdminController < UsersController
  before_action :check_user


  def show

  end

  private

  def check_user
    unless current_user.is_admin?
      redirect_to_back
    end
  end

end
