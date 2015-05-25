class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.boolean :favorite
      t.integer :user_id
      t.string :comment
      t.string :date
      t.string :location
      t.integer :rating
      t.integer :oyster_id

      t.timestamps

    end
  end
end
