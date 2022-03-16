class Product::FindProducts

  def initialize(product_repository:)
    @product_repository = product_repository
  end

  def call
    @product_repository.get_products
  end

end
