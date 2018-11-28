class ApplicationController < ActionController::Base
  before_action :set_header

  def set_header
    @menu_category = Category.all
  end
end
