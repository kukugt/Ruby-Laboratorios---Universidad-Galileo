class Computer
	@@users = {}

	def initialize username, password
		@username = username
		@password = password

		@files = {}
	end

	def create name
		if ( @files.empty? || !@files.has_key?(name) ) then
			@files[name] = Time.new.strftime("%d/%m/%Y %I:%M %p")
		else 
			print "ERROR: El Archivo ya existe. ", name, "\n"
		end
	end

	def ls h={}
		print ">> Lista \n"
		a = @files.to_a
		if ( h.has_value?('asc') ) then
			a = @files.sort do |x,y|
				x[0]<=>y[0] 
			end
		elsif ( h.has_value?('desc') )  then
			a = @files.sort do |x,y| 
				y[0]<=>x[0] 
			end
		end
		if ( a.empty? == false ) then
			a.each_index do |x| 
				print "\t", x+1, ")\t", a[x][0], "\tcreate at ", a[x][1], "\n"
			end
		else 
			print "-- VACIO --  \n"
		end 
	end

	def rm name
		if ( @files.has_key?(name) ) then
			@files.delete(name)
		else
			print "ERROR: El Archivo no existe. ", name, "\n"
		end
	end

end

comp = Computer.new("Jorge Chaclan", "1234890")
p comp
comp.create "Imagen.jpg"
comp.create "Imagen.jpg"
comp.create "computer.rb"
comp.create "dessert.rb"
comp.create "action.rb"
comp.create "ReadMe.txt"

hash_sort = Hash.new
hash_sort["sort"]="asc"
comp.ls hash_sort
hash_sort["sort"]="desc"
comp.ls hash_sort
p "Remove Imagen.jpg"
comp.rm "Imagen.jpg"
p "Remove Imagen.jpg"
comp.rm "Imagen.jpg"
comp.ls

