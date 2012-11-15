class Announcement
  include Mongoid::Document

  field :title, type: String
  field :content, type: String
  field :expiration, type: Date
  field :online, type: Boolean

  def archived?
    if self.online
      then puts "Yeah"
    else
      puts "Not yet"
    end
  end
end
