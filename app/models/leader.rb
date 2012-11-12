class Leader < Person
  include Mongoid::Document
  
  def cool?
    if fname == "Laney"
      puts "Way cool!"
    end
  end
end
