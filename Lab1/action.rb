module Action
  attr_reader :distance
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def run
    t = (10.0/@distance).round(2)
    print "Distancia: 10 metros Tiempo: "
    print t 
    print " segundos\n"
  end

end

class Cricket
  include Action

  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def run
    t = (10.0/@distance).round(2)
    print "Distancia: 10 metros Tiempo: " 
    print t.to_f  
    print " segundos\n"
  end

  def chirp
    (rand(91)+10).times do print "Chirp... chirp!! " end
  end

end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump

peter.run
jiminy.run

jiminy.chirp