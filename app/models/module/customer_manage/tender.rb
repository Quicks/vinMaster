class Module::CustomerManage::Tender
  include Mongoid::Document
  include Mongoid::Timestamps
  include ::Geocoder::Model::Mongoid

  field :title,type: String
  field :description,type: String
  field :budget,type: Integer
  field :address, type: String
  field :contact_data, type: String
  field :finish_at, type: Date
  field :coordinates,type: Array

  belongs_to :author,class_name: 'User'
  belongs_to :category,class_name: 'Module::AdminManage::Category'
  scope :get_by_author, -> (user){where(author: user)}

  validates :title,:description,:author,:category, presence: true
  validates :budget,numericality: {only_integer: true}

  before_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def geocode
    self.coordinates =  Geocoder.coordinates(address)
  end
end