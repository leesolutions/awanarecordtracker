class Clubber < Person
  include Mongoid::Document
  field :parents, type: String
  belongs_to :rank
  has_many :award_completions
end
