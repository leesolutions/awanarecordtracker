class Person
  include Mongoid::Document
  field :fname, type: String
  field :lname, type: String
  field :birthdate, type: Date
  field :address, type: String
  field :phone, type: String
  field :email, type: String
end
