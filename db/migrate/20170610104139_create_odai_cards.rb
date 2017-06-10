class CreateOdaiCards < ActiveRecord::Migration[5.0]
  def change
    create_table :odai_cards do |t|
      t.integer :odai_id, null: false, foreign_key: true
      t.integer :card_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
