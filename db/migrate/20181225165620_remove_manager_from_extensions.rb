class RemoveManagerFromExtensions < ActiveRecord::Migration[5.1]
  def self.down
      remove_column :extensions, :manager_id
  end
end
