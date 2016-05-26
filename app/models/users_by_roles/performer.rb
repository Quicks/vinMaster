class UsersByRoles::Performer < User
  include Mongoid::Document

  field :types,type: String
end