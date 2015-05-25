class CreateOysters < ActiveRecord::Migration
  def change
    create_table :oysters do |t|
      t.string :description
      t.string :name

      t.timestamps

    end
  end
end
