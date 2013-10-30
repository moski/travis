#!/usr/bin/ruby

require 'fr.rb'

a = Racional.new(8, 4)
puts a.to_s_fracc
puts a.to_d

b = Racional.new(4,3)
puts b.to_s_fracc
puts b.to_d

a = a.reciproca()
puts a

b = -b
puts b

a = a - b 
