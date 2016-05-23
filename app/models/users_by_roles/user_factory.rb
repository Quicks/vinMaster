class UsersByRoles::UserFactory

  def self.make_user(user_params)
    # factory for user
    # create user by roles
    user = User
    case user_params[:roles]
      when 'customer'
        binding.pry
        user = Customer.new(user_params)
      when 'performer'
        user = Performer.new(user_params)
    end
    user
  end

end