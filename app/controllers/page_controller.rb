class PageController < ApplicationController
  def index
    @menu_category = Category.all
  end

  def coffees
  end

  def teas
  end
end
