class AddCardIdToBokes < ActiveRecord::Migration[5.0]
  def change
    add_column :bokes, :card_id, :integer
  end
end
