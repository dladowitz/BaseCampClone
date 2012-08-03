class Task < ActiveRecord::Base
  attr_accessible :list_id, :name, :user_id

  belongs_to :list
end
