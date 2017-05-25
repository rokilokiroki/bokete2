class CreateBokes < ActiveRecord::Migration[5.0]
  def change
    create_table :bokes do |t|
      t.string    :body, index: true, null: false
      t.integer :user_id, null: false
      t.integer :odai_id, null: false
      t.timestamps
    end
  end
end
