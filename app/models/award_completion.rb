class AwardCompletion
  include Mongoid::Document

  field :date, type: Date
  field :no_help, type: Boolean

  belongs_to :clubbers
  belongs_to :awards
  belongs_to :leaders
end
