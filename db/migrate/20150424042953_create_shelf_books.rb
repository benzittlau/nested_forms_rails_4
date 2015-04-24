class CreateShelfBooks < ActiveRecord::Migration
  def change
    create_table :shelf_books do |t|
      t.integer :shelf_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
