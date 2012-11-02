class Award
  include Mongoid::Document
  field :description, type: String
  belongs_to :rank
end
