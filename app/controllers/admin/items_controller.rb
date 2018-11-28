class Admin::ItemsController < Admin::BaseController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_category, only: [:new, :edit, :create]


  def show
  end

  def new
    @item = Item.new
    @item.build_document
    @item.item_prices.build
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.category = @category
    respond_to do |format|
      if @item.save
        format.html { redirect_to admin_category_path(@category), notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to admin_category_path(@item.category), notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to admin_category_path(@item.category), notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def item_params
      params.require(:item).permit(:name, :description, document_attributes: [:doc, :doc_type, :_destroy], item_prices_attributes: [:price, :quantity, :size, :_destroy])
    end

    def set_category
      @category = Category.find(params[:category_id])
    end
end
