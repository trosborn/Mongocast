class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: BigDecimal
  field :released_on, type: Date

  validates_presence_of :name

  field :_id, type: String, default: -> { name.to_s.parameterize }

  embeds_many :reviews
end
