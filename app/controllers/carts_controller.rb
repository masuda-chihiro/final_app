class CartsController < ApplicationController
  
  #def new
  #  @purchase = Purchase.new
  #end


  def create
    
    if old_cart
      @purchases = Purchase.where(whether: false).where(user_id: session[:user_id]).where(product_id: params[:purchase][:product_id])
      @purchases.each do |purchase|
      purchase.quantity = purchase.quantity + 1
      purchase.save
      end
      @purchases = Purchase.where(whether: false, user_id: session[:user_id])
      a = total_price
      @total = a
      render 'index'
    else

      @purchase = Purchase.new(purchases_params)
      @purchase.whether = false
      @purchase.user_id = session[:user_id]
      @purchase.quantity = 1
      if  
        @purchase.save
        @purchases = Purchase.where(whether: false, user_id: session[:user_id])
        a = total_price
        @total = a
        render 'index'
      else
      redirect_to products_path
      end
    end
  end

  
  #  if Purchase.where(whether: false, user_id: session[:user_id], product_id: params[:product_id])
  #    @purchases = Purchase.where(whether: false).where(user_id: session[:user_id]).where(product_id: params[:product_id])
  #    @purchases.each do |purchase|
  #    purchase.quantity = purchase.quantity + 1
  #    end
  #    @purchases = Purchase.where(whether: false, user_id: session[:user_id])
  #  else
  #    @purchase = Purchase.new(purchases_params)
  #    @purchase.whether = false
  #    @purchase.user_id = session[:user_id]
  #    @purchase.quantity = params[:quantity]
  #  if  
  #    @purchase.save
  #    @purchases = Purchase.where(whether: false, user_id: session[:user_id])
  #  else
  #    redirect_to root_url
  #  end
  #  render 'index'
  #  end

#  def create
#    debugger
#   @purchase = Purchase.new(purchases_params)
#   #@purchase = Purchase.new(
#    # {:whether => false, :quantity => 1, :user_id => session[:user_id], :product_id => params[:product_id]})
#   @purchase.whether = false
#   @purchase.quantity = 1
#   @purchase.user_id = session[:user_id]
#   @purchase.product_id = params[:product_id]
#  #debugger
##raise @purchase.valid?.inspect
#   if @purchase.save
#    #  flash[:success] = "買い物かごに追加しました！"
#    #begin
#    #@purchase.save
#    #rescue => e
#    #  puts e.backtrace
#    #end
#    redirect_to carts_path
#    else
#      redirect_to root_url
#    end
#  end
#   # @purchase = Purchase.new
#   # @purchase.product_id = params[:product_id].to_i
#   # @purchase.user_id = params[:user_id].to_i
#   # @purchase.quantity = params[:quantity].to_i
#   # @purchase.whether = params[:whether].to_i
#   # @purchase.send_id = 1
#   # @purchase.save
#   # redirect_to carts_path
#
#      #@purchase = Purchase.new(purchase_params)
#      #if purchase.save
#      #  flash[:success] = “買い物かごに追加しました”
#      #  redirect_to carts_path
#      #else
#      #  redirect_to carts_path
#      #  render templete: ‘products/index’
#      #end

  def index
    @purchases = Purchase.where(whether: false, user_id: session[:user_id])
    a = total_price
    @total = a
    
  end

  def update
  end

  def destroy
    @purchase = Purchase.find_by(product_id:params[:id])
    @purchase.destroy
    flash[:success] = "買い物かごから削除しました！"
    redirect_to carts_path
  end

  private

    def purchases_params
      params.require(:purchase).permit(:quantity, :product_id)
    end

    def old_cart
      if  Purchase.where(whether: false).where(user_id: session[:user_id]).where(product_id: params[:purchase][:product_id]) ==[]
        false
      else
        true
      end
    end  

    def total_price
      a = 0
      @purchases.each do |purchase|
        a += purchase.product.price.to_i * purchase.quantity.to_i
      end
      return a
    end
end