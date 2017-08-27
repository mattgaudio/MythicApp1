class AddCaptainToBracketPoolPlayer < ActiveRecord::Migration[5.1]
  def change
    add_column :bracket_pool_players, :captain, :boolean
  end
end
