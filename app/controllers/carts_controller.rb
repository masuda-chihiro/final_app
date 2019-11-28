class CartsController < ApplicationController
  
  #def new
  #  @purchase = Purchase.new
  #end

  def create
   @purchase = Purchase.new(purchases_params)
   @purchase.send_id = 1
    if @purchase.save
      flash[:success] = "買い物かごに追加しました！"
            redirect_to carts_url
    else
      redirect_to root_url
    end
  end
   # @purchase = Purchase.new
   # @purchase.product_id = params[:product_id].to_i
   # @purchase.user_id = params[:user_id].to_i
   # @purchase.quantity = params[:quantity].to_i
   # @purchase.whether = params[:whether].to_i
   # @purchase.send_id = 1
   # @purchase.save
   # redirect_to carts_path

      #@purchase = Purchase.new(purchase_params)
      #if purchase.save
      #  flash[:success] = “買い物かごに追加しました”
      #  redirect_to carts_path
      #else
      #  redirect_to carts_path
      #  render templete: ‘products/index’
      #end

  def index
    @purchases = Purchase.where(whether: 0, user_id: session[:user_id])
  end

  def update
  end

  def delete 
  end

  private

    def purchases_params
      params.require(:purchase).permit(:quantity, :whether, :user_id, :product_id, :send_id)
    end

end