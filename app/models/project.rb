class Project < ActiveRecord::Base
  attr_accessible :name, :is_public

  validates_presence_of :name

  has_many :memberships
  has_many :users, :through => :memberships
  has_many :lists

  accepts_nested_attributes_for :lists

end
