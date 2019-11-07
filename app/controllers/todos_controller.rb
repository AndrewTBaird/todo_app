class TodosController < ApplicationController
	def index
		@todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
    @categories = Category.all
  end

  def create
    @todo = Todo.create todo_params
    redirect_to root_path
  end

  def edit
    @todo = Todo.find(params[:id])
    @categories = Category.all
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update todo_params
    redirect_to root_path
  end

  def destroy
    Todo.find(params[:id]).destroy
    redirect_to root_path
  end

  private

  def todo_params
    params.require(:todo).permit(:content, :completed, :category_id)
  end
end
