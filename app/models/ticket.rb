class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  attr_accessible :description, :title, :assets_attributes

  has_many :assets
  accepts_nested_attributes_for :assets

  validates :title, :description, :presence => true, length: { minimum: 10 }
end
