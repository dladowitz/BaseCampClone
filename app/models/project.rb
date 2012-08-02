class Project < ActiveRecord::Base
  attr_accessible :name, :is_public

  has_many :memberships
  has_many :users, :through => :memberships

end
