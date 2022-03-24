require "spec_helper"

RSpec.describe ProductRepository, type: :repository do
  subject { ProductRepository.new }

  describe ".get_products" do
    let!(:user_one) { create(:user) }
    let!(:user_two) { create(:user) }
    let!(:product_one) { create(:product, title: "Product 1", price: 100, user_id: user_one.id) }
    let!(:product_two) { create(:product, title: "Product 2", price: 80, user_id: user_two.id) }

    it "return products" do
      products = subject.get_products
      expect(products.size).to be == 2

      first_product = products.first
      expect(first_product.id).to eq(product_two.id)
      expect(first_product.title).to eq(product_two.title)
      expect(first_product.price).to eq(product_two.price)
      expect(first_product.user_id).to eq(product_two.user_id)

      second_product = products.second
      expect(second_product.id).to eq(product_one.id)
      expect(second_product.title).to eq(product_one.title)
      expect(second_product.price).to eq(product_one.price)
      expect(second_product.user_id).to eq(product_one.user_id)
    end
  end
end
