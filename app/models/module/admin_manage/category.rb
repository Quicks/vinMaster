require 'carrierwave/mongoid'
class Module::AdminManage::Category
  include Mongoid::Document
  has_many :subordinates,class_name: 'Module::AdminManage::Category',foreign_key: "p_id"

  scope :get_parent_categories, -> {where(p_id: nil)}
  field :title, type: String
  field :p_id, type: String
  field :alias,type: String
  mount_uploader :img, TenderCategoriesUploader

  skip_callback :update, :before, :store_previous_model_for_img

  validates :alias, uniqueness: true,allow_blank: true
  validates :title, presence: true
end
