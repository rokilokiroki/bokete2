class CreateRensouBokes < ActiveRecord::Migration[5.0]
  def change
    create_table :rensou_bokes do |t|
      t.string  :body,  null: false
      t.integer :user_id
      t.integer :card_id
      t.timestamps
    end
  end
end
