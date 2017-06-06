class AddOdaiIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :odai_id, :integer
  end
end
