class AddColumnsToBracket < ActiveRecord::Migration[5.1]
  def change
    add_column :brackets, :nightly_free, :boolean, default: true
    add_column :brackets, :nightly_10, :boolean, default: true
    add_column :brackets, :nightly_25, :boolean, default: true
    add_column :brackets, :nightly_100, :boolean
    add_column :brackets, :weekly_free, :boolean, default: true
    add_column :brackets, :weekly_10, :boolean, default: true
    add_column :brackets, :weekly_25, :boolean, default: true
    add_column :brackets, :weekly_100, :boolean, default: true
    add_column :brackets, :weekly_250, :boolean
    add_column :brackets, :weekly_500, :boolean
  end
end


                        