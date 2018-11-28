class MenuController < ApplicationController

  def show
    @menu_category = Category.all
    @category = Category.find(params[:id])
    @items = @category.items
  end
end
