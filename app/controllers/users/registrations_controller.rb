class Users::RegistrationsController < Devise::RegistrationsController
before_filter :user_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]
#   before_action :configure_permitted_parameters
  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    # super
    @user = UsersByRoles::UserFactory.make_user(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to user_root(@user), notice: 'Вітаємо' }
      else
        format.html { render :new }
      end
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected
  def user_params
    params.require(:user).permit(:nick_name,:roles, :email,:password,:password_confirmation)
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.for(:sign_up) << :attribute
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end