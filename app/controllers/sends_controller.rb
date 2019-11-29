class SendsController < ApplicationController
  
  def new
    @send = Send.new
  end

  def create
    @send = Send.new(sends_params)
    if @send.save
      flash.now[:success] = "商品を購入しました"
      @purchases = Purchase.where(whether: false, user_id: session[:user_id])
    @purchases.each do |purchase|
      purchase.whether = true
      purchase.save
    end
      render 'show'
    else
      render 'new'
    end
  end
  
  def show
  end


private

    def sends_params
      params.require(:send).permit(:name, :email, :postal_code,
                                      :address, :card_number)
    end

end
