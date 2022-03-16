class Api::Products::V1Controller

  def index
    products = ::Product::FindProducts.new(
      product_repository: ProductRepository.new
    ).call

    render json: ::Api::Products::V1Serializer.new(products).as_json
  end

end
