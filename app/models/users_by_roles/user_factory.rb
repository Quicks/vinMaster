class UsersByRoles::UserFactory

  def self.make_user(user_params)
    # factory for user
    # create user by roles
    case user_params[:roles]
      when 'customer'
        user = UsersByRoles::Customer.new(user_params)
      when 'performer'
        user = UsersByRoles::Performer.new(user_params)
        user.test = 'test'
      else
        raise 'Can not find user roles'
    end
    user
  end

end