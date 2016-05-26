class UsersByRoles::Customer < User
  include Mongoid::Document

  field :types,type: String

end