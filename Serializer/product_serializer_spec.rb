RSpec.describe Api::Products::V1Serializer do

  let!(:products) do
    user_one = create(:user)
    user_two = create(:user)
    product_one = create(:product, title: "Product 1", price: 100, user_id: user_one.id)
    product_two = create(:product, title: "Product 2", price: 80, user_id: user_two.id)
    [product_two,product_one]
  end

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

  context "when has products" do
    it { expect(::Api::Products::V1Serializer.new(products).serializable_hash).to eq(expected_structure) }
  end
end
