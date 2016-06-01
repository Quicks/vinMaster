class Tender
  include Mongoid::Document

  field :title,type: String
  field :description,type: String
  field :budget,type: Integer
  field :address, type: String

  belongs_to :author,class_name: 'User'

  scope :get_by_author, -> (user){where(author: user)}

  validates :title,:description,:author, presence: true
  validates :budget,numericality: {only_integer: true}

end