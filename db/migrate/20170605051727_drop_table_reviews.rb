class DropTableReviews < ActiveRecord::Migration[5.0]
  def change
    drop_table :reviews
  end
end
