class RemovTitleFromTodo < ActiveRecord::Migration[5.1]
  def change
    remove_column :todos, :title
    rename_column :todos, :description, :content
  end
end
