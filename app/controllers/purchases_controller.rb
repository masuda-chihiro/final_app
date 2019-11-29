class PurchasesController < ApplicationController
  
  def index
    @purchases = Purchase.where(whether: 1, user_id: session[:user_id])
  end

  def update
  end
  
  def sales
    @purchases = Purchase.where(whether: 1)
    @sales = total_sales
  end

  private

    def total_sales
      a = 0
      @purchases.each do |purchase|
        a += purchase.product.price.to_i * purchase.quantity.to_i
      end
      return a
    end

end

