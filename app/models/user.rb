class User
  include Mongoid::Document
  include RoleModel

  MINIMAL_NICK_NAME_LENGTH = 4
  MAXIMUM_NICK_NAME_LENGTH = 20


  field :nick_name ,type: String

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  ## Database authenticatable
  field :email,              type: String, default: ""
  field :encrypted_password, type: String, default: ""

  ## Recoverable
  field :reset_password_token,   type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count,      type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at,    type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip,    type: String

  # optionally set the integer attribute to store the roles in,
  # :roles_mask is the default
  field :roles_mask
  roles_attribute :roles_mask
  roles :admin,:performer,:customer

  validates :nick_name ,presence: true,
            uniqueness: true,
            length: {in: MINIMAL_NICK_NAME_LENGTH..MAXIMUM_NICK_NAME_LENGTH}

  validates :roles ,presence: true


  scope :get_user_by_nick_name,lambda { |nick| where(:nick_name => nick) }

  def is_performer?
    roles.member? :performer
  end
  def is_customer?
    roles.member? :customer
  end
  def is_admin?
    roles.member? :admin
  end

end
