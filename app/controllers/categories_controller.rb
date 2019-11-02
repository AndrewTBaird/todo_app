class CategoriesController < ApplicationController
  def show
    @categories = Category.all
  end

  def create
    @category = Category.create! category_params
    redirect_to root_path
  end

  def destroy
    Category.find(params[:id]).destroy
  end
end

private

def category_params
  params.require(:category).permit(:name)
end
