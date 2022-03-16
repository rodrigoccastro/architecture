class ProductRepository
  def get_products
    model
      .select("id, title, price, user_id")
      .order("created_at desc")
  end

  private

  def model
    @model = Product
  end
end
