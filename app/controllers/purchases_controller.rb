class PurchasesController < ApplicationController
  
  def index
    @purchases = Purchase.where(whether: 1, user_id: session[:user_id])
  end

  def update
  end
  
end

