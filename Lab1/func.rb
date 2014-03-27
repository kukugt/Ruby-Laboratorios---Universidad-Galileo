module Func  
	def palindromo?(s)
		palindro = ''
		s = s.downcase
		s = s.gsub(/(?![a-zA-Z])./, '')
		s.each_char do |c| 
			palindro = c + palindro 
		end
		palindro == s
	end

	def cuenta_palabras(s)
		nest = Hash.new(0)
		s.scan(/\w+/){|p| nest[p]= nest[p] + 1}
		nest
	end

	def hanoi(numero_discos, t_origen, t_destino, t_alterna)
		if (numero_discos==1) then 
			print "Cambia de ",t_origen, " a ", t_destino, "\n"
		else 
			hanoi(numero_discos-1, t_origen, t_alterna, t_destino )
			print "Cambia de ",t_origen, " a ", t_destino, "\n"
			hanoi(numero_discos-1, t_alterna, t_destino, t_origen )
		end
		nil
	end

	def sort(a, asc=true)
		narr = Array.new
		narr.replace(a)
		narr.each_index do |x| 
			narr.each_index do |y| 
				if asc && narr[x]<narr[y]  then 
					t = narr[y]
					narr[y] = narr[x]
					narr[x] = t
				elsif !asc && narr[x]>narr[y] then
					t = narr[y]
					narr[y] = narr[x]
					narr[x] = t
				end
			end
		end
		narr
	end

	def char_count(s, c='')
		v = 0
		c = c 
		s.each_char do |a| 
			if a==c then 
				v = v + 1
			end
		end
		v
	end

	def atoi s
		val = 0
		a = s.match(/^[-,+]?[0-9]+/)[0]
		a.each_char do |c| 
			if (c!="-") then 
				val = val*10 + c.to_i  
			end
		end
		if (a[0]=="-") then 
			val = val * -1 
		end
		val
	end
end  

class Test
	include Func
	def main
		print "\n>> Modules are included <<\n\n"

		print "palindromo: A man, a plan, a canal – Panama\n"
		p palindromo? "A man, a plan, a canal – Panama"
		print "\n"
		print "cuenta_palabras: A man, a plan, a canal – Panama\n"
		p cuenta_palabras "A man, a plan, a canal – Panama"
		print "\n"
		print "hanoi: A man, a plan, a canal – Panama\n"
		hanoi 3, "Origen" , "Destino", "Alterna"
		print "\n"
		print "sort [85,5,3,212,3,1,5,5,9,10,4] asc\n"
		p sort [85,5,3,212,3,1,5,5,9,10,4], true
		print "\n"
		print "sort [85,5,3,212,3,1,5,5,9,10,4] desc\n"
		p sort [85,5,3,212,3,1,5,5,9,10,4], false
		print "\n"
		print "char_count: A man, a plan, a canal – Panama => a\n"
		p char_count "A man, a plan, a canal – Panama", 'a'
		print "\n"
		print "atoi: -5\n"
		p atoi "-5"
		print "\n"
		print "atoi: 5\n"
		p atoi "5"
		print "\n"
		print ">> END <<\n"

	end
end


test = Test.new

test.main
