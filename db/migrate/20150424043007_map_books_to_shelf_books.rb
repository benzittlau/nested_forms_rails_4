class MapBooksToShelfBooks < ActiveRecord::Migration
  def change
    remove_column :books, :shelf_id
    add_column :books, :shelf_book_id, :integer
  end
end
