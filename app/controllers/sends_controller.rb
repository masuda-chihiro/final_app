class SendsController < ApplicationController
  
  def new
    @send = Send.new
  end

  def create
    @send = Send.new(sends_params)
    if @send.save
      flash[:success] = "商品を購入しました"
      render 'show'
      #redirect_to 
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
