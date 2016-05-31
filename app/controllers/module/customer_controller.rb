class Module::CustomerController < UsersController
  before_action :check_access
  before_action :check_user,only: [:show]

  def show
  end

  private

  def check_access
    unless current_user.is_customer?
      redirect_to :back
    end
  end

end
