class ProductsController < ApplicationController
  
  def new
    @product = Product.new
  end

  def create
    @user = Product.new(product_params)
    if @product.save
      # 保存の成功をここで扱う。
    else
      render 'new'
    end
  end


  def edit
  end


  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end


private

    def product_params
      params.require(:product).permit(:name, :explanation, :price,
                                      :stock)
    end
  end

