class Yeast
  include Mongoid::Document
  field :name, type: String
  field :attenuation_lo, type: BigDecimal
  field :attenuation_hi, type: BigDecimal
  field :flocculation, type: BigDecimal
  field :temperature_lo, type: BigDecimal
  field :temperature_hi, type: BigDecimal
  field :alcohol_tolerance, type: BigDecimal

  has_and_belongs_to_many :prototypes, :inverse_of => :yeast
end