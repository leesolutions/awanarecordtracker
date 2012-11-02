class Clubber
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :parents, type: String
  field :birth_date, type: Date
  field :address, type: String
  field :city, type: String
  field :zip, type: String
  field :phone, type: String
  field :email, type: String
  belongs_to :rank
  has_many :award_completions
end
