class CreateShelves < ActiveRecord::Migration
  def change
    create_table :shelves do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
