class Api::Products::V1Serializer < ActiveModel::Serializer
  attributes :items

  def items
    object.map do |item|
      build_item(item)
    end
  end

  private

  def build_item(item)
    {
      id: item.id,
      title: item.title,
      price: item.price,
      user_id: item.user_id
    }
  end

end
