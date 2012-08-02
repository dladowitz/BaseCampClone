class AddIsPublicToProject < ActiveRecord::Migration
  def change
    add_column :projects, :is_public, :boolean, :default => true
  end
end
