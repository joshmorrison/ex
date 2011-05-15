class AddUserIdToChecklist < ActiveRecord::Migration
  def self.up
    add_column :checklists, :user_id, :integer
  end

  def self.down
    remove_column :checklists, :user_id
  end
end
