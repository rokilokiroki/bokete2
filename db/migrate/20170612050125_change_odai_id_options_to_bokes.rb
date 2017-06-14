class ChangeOdaiIdOptionsToBokes < ActiveRecord::Migration[5.0]
  def change
    change_column :bokes, :odai_id, :integer, null: true
  end
end
