class Announcement
  include Mongoid::Document

  field :title, type: String
  field :content, type: String
  field :expiration, type: Date
  field :online, type: Boolean

  scope :current, where(:expiration.lt => Date.today)

  def archived?
    if self.online
      puts "Yeah"
    else
      puts "Not yet"
    end
  end
end
