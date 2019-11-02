class AddCategoryToTodo < ActiveRecord::Migration[5.1]
  def change
    add_column :todos, :category, :string
  end
end
