class Rank
  include Mongoid::Document

  field :title, type: String

  has_many :clubbers
  has_many :awards
end
