class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  attr_accessible :description, :title, :asset
  has_attached_file :asset

  validates :title, :description, :presence => true, :length => { :minimum => 10 }
end
