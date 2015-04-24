class AddConditionToShelfBooks < ActiveRecord::Migration
  def change
    add_column :shelf_books, :condition, :string
  end
end
