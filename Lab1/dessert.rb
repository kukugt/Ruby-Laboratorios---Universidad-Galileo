class Dessert
	attr_accessor	:name 
	attr_accessor	:size
	attr_accessor	:calories

	def initialize(name, calories)
		@name = name
		@calories = calories
	end

	def healthy?
		(@calories<200)
	end

	def delicious?
		true
	end

	def to_s
		"#{@name} #{@size} (#{@calories}cal)"
	end
end

class JellyBean < Dessert
	attr_accessor	:flavor
	def initialize(name, calories, flavor)
		@name = name
		@flavor = flavor
		@calories = calories
	end

	def delicious?
		(flavor.downcase !="black licorice")
	end
end

p ">> Dessert 1"
d0 = Dessert.new "Helado Chocolate", 200 
print ">> size: "
p d0.size = "Mediano"
print ">> healthy? "
p d0.healthy?
print ">> delicious? "
p d0.delicious?
p d0.to_s
p ">> Dessert 2"
d1= Dessert.new "Helado Menta", 150 
print ">> size: "
p d1.size = "Grande"
print ">> healthy? "
p d1.healthy?
print ">> delicious? "
p d1.delicious?
p d1.to_s
p ">> Dessert 3"
d2= Dessert.new "Helado Caramelo", 300
print ">> healthy? "
p d2.healthy?
print ">> delicious? "
p d2.delicious?
p d2.to_s
p ">> JellyBean 1"
j0 = JellyBean.new "Green", 100, "Limon"
print ">> size: "
p j0.size = "Mediano"
print ">> healthy? "
p j0.healthy?
print ">> delicious? "
p j0.delicious?
p j0.to_s
p ">> JellyBean 2"
j1 = JellyBean.new "Green", 200, "black licorice"
print ">> healthy? "
p j1.healthy?
print ">> delicious? "
p j1.delicious?
p j1.to_s
p ">> JellyBean 3"
j2 = JellyBean.new "Green", 550, "Black Licorice"
print ">> size: "
p j2.size = "Grande"
print ">> healthy? "
p j2.healthy?
print ">> delicious? "
p j2.delicious?
p j2.to_s



