class ChangeCategoryToCategoryId < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :category
    add_column :todos, :category_id, :integer
  end
end
