class AddGameRefsToBrackets < ActiveRecord::Migration[5.1]
  def change
    add_reference :brackets, :game, foreign_key: true
  end
end
