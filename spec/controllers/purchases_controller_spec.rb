require 'rails_helper'

RSpec.describe PurchasesController, type: :controller do

  describe "GET #carts" do
    it "returns http success" do
      get :carts
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #history" do
    it "returns http success" do
      get :history
      expect(response).to have_http_status(:success)
    end
  end

end
