class CategoriesController < ApplicationController
  def index
    if params[:category_ids].present?
      if params[:category_ids].include?(0)
        @categories = Category.all
      else
        @categories = Category.where(id: params[:category_ids])
      end
    else
      @categories = Category.all
    end
  end

  def create
    @category = Category.create category_params
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
