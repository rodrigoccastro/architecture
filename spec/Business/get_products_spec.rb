require "spec_helper"

RSpec.describe FindProducts, type: :business do

  let(:product_repository) { instance_double(ProductRepository) }
  let(:active_relation) {
    [
      {
        :id => 1,
        :title => "vestido 1",
        :price =>  48
      },
      {
        :id => 2,
        :title => "vestido 2",
        :price =>  49
      }
    ]
  }

  subject { described_class.new(product_repository: product_repository) }

  describe ".call" do

    it "return list of products" do
      expect(product_repository).to receive(:get_products).and_return(active_relation)
      expect(subject.call).to eq(active_relation)
    end

  end

end
