class Category
  include Mongoid::Document
  has_many :subordinates,class_name: 'Category',foreign_key: "p_id"


  field :title, type: String
  field :p_id, type: String
  field :alias,type: String
  validate :alias, uniqueness: true
  validates :title,:alias, presence: true
end
