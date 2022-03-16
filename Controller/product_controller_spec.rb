require 'spec_helper'

RSpec.describe Api::Products::V1Controller, type: :controller do

  let!(:user_one) { create(:user) }
  let!(:user_two) { create(:user) }
  let!(:product_one) { create(:product, title: "Product 1", price: 100, user_id: user_one.id) }
  let!(:product_two) { create(:product, title: "Product 2", price: 80, user_id: user_two.id) }
  let(:result) do
    {
      "items" => [
                    {
                      "id" => product_two.id,
                      "title" => product_two.title,
                      "price" => product_two.price,
                      "user_id" => user_two.id
                    },
                    {
                      "id" => product_one.id,
                      "title" => product_one.title,
                      "price" => product_one.price,
                      "user_id" => user_one.id
                    }
                  ]
    }
  end

  shared_examples_for "respond with sucess" do
    it "respond with sucess" do
      get :index

      expect(response).to be_success
      expect(response.body).to eq(result)
    end
  end

  describe "GET #index" do

    context "when has products" do
      it_behaves_like "respond with sucess"
    end

  end
end
