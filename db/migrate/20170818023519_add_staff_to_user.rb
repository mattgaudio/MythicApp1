class AddStaffToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :staff, :boolean
    add_column :users, :admin, :boolean
  end
end
