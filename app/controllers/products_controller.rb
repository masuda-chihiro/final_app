class ProductsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @product = Product.all
  end

  def show
    @user = Product.find(params[:id])
  end


private

    def product_params
      params.require(:product).permit(:name, :explanation, :price,
                                      :stock)
    end

  end