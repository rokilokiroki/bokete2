class RemoveColumnToBoke < ActiveRecord::Migration[5.0]
  def change
    remove_column :bokes, :card_id, :integer
  end
end
