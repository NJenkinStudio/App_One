class CategoriesController < ApplicationController
  # before_action :set_category, only: [:show]

  def new 
    @category = Category.new
  end 

  def create 
    @category = Category.new(category_params)
    if @category.save 
      flash[:notice] = "Category succesfully created"
      redirect_to @category 
    else
      render 'new'
    end
  end

  def index  
    @categories = Category.paginate(page: params[:page], per_page: 5)
  end

  def show 
    @category = Category.find(params[:id])
  end

  private
  # def set_category 
  #   @category = Category.find(category_params[:id])
  # end

  def category_params
    params.require(:category).permit(:name)
  end
end