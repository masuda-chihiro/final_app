class ProductsController < ApplicationController
  before_action :admin_user,     only: :index
  before_action :admin_user,     only: :edit
  before_action :admin_user,     only: :update
  before_action :admin_user,     only: :create

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "商品を登録しました！"
            redirect_to products_url
    else
      redirect_to root_url
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "商品情報を更新しました"
      redirect_to product_path
    else
      render 'edit'
    end
  end


  def index
    @products = Product.all
  end

  def show
 
    @product = Product.find(params[:id])
 #   @purchase = Purchase.new
    

  end


private

    def product_params
      params.require(:product).permit(:name, :explanation, :price,
                                      :stock, :company_id)
    end
  end

