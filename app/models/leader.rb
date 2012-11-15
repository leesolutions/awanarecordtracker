class Leader < Person
  include Mongoid::Document
  
  def cool?
    puts "Way cool!" if fname == "Laney"
  end
end
