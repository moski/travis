
require 'funciones.rb'


class Racional
	
	include Comparable

	attr_reader :n, :d

	#Constructor
	def initialize(n, d)
		if d == 0
			@n = n
			@d = 1
			#puts "INTRODUZCA UN DENOMINADOR DISTINTO DE 0"
			#@d = gets.chomp         #suprime /n
		else
		  @n, @d = n, d 
		end 
		@n, @d = @n/mcd(@n, @d), @d/mcd(@n, @d)
	end 
	
	#To String (defecto)
	def to_s()                
		to_s_fracc()
	end    

	#To Fracc(forma fraccion)
	def to_s_fracc()                
		return "#{n}/#{d}"
	end	

	#To Double (forma decimal)
	def to_d()                
	    @n.to_f / @d
	end	  
 
	def num()
	  return  @n
	end

	def denom()
	  return @d
	end

	def reducida()

	  return Racional.new(@n/mcd(@n, @d), @d/mcd(@n, @d))

	end

	#Sobrecarga del operador negativo
	def -@       
	 return Racional.new(@n * -1, @d * -1)
  	end

	#Sobrecarga de valor absoluto
	def abs
		return Racional.new(@n.abs , @d.abs)
	end

	#Sobrecarga del reciproco
	def reciproca
		return Racional.new(@d , @n ).reducida()
	end
        
	#Sobrecarga multiplicacion
	def *(other)
		return Racional.new(@n*other.n, @d*other.d).reducida()                            
	end 
	
	#Sobrecarga division
	def /(other)
		return Racional.new(@n*other.d, @d*other.n).reducida()                                 
	end 

	#Sobrecarga suma
	def +(other)                        
		return Racional.new(((mcm(@d, other.d) / @d)*@n) + ((mcm(@d, other.d) / other.d)*other.n),mcm(@d, other.d)).reducida()
	end

	#Sobrecarga resta
	def -(other)        
	  return Racional.new(((mcm(@d, other.d) / @d)*@n) - ((mcm(@d, other.d) / other.d)*other.n),mcm(@d, other.d)).reducida()
	end
	
	#Sobrecarga modulo
	def %(other)
	  aux = self./(other)
	  mod = aux.n % aux.d
	  return mod
	end
	
	#Sobrecarga con comparable

	def <=>(other)
                a, b= self.to_d, other.to_d
                a <=> b
        end

	
		

end
