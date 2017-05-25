class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string    :text, index: true
      t.integer :user_id, null: false
      t.integer :boke_id, null: false
      t.timestamps
    end
  end
end
