class Admin::MenusController < Admin::BaseController
  before_action :set_admin_menu, only: [:show, :edit, :update, :destroy]

  def index
    @admin_menus = Menu.all
  end

  def show
  end

  def new
    @admin_menu = Menu.new
  end

  def edit
  end

  def create
    @admin_menu = Menu.new(admin_menu_params)

    respond_to do |format|
      if @admin_menu.save
        format.html { redirect_to @admin_menu, notice: 'Menu was successfully created.' }
        format.json { render :show, status: :created, location: @admin_menu }
      else
        format.html { render :new }
        format.json { render json: @admin_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_menu.update(admin_menu_params)
        format.html { redirect_to @admin_menu, notice: 'Menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_menu }
      else
        format.html { render :edit }
        format.json { render json: @admin_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_menu.destroy
    respond_to do |format|
      format.html { redirect_to admin_menus_url, notice: 'Menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_menu
      @admin_menu = Menu.find(params[:id])
    end

    def admin_menu_params
      params.permit(:name)
    end
end
