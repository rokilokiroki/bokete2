class CreateOdais < ActiveRecord::Migration[5.0]
  def change
    create_table :odais do |t|
      t.string  :image, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
