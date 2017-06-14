class AddOdaiIdToBokes < ActiveRecord::Migration[5.0]
  def change
    add_column :bokes, :odai_id, :integer
  end
end
