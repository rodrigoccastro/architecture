# Table name: products
#
#  id                           :integer          not null, primary key
#  title                        :string(255)
#  price                        :integer          default(0), not null
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null

class Product < ApplicationRecord

  validates_presence_of :title
  validates :price, numericality: { greater_than: 0 }, allow_blank: true

end
