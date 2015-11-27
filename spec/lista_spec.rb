#!/bin/env ruby
# encoding: utf-8

require 'lista.rb'
require 'lista/pract6.rb'
require 'spec_helper'
require 'lista/libros.rb'
describe Pract6 do


	before :each do
	@lib = Libros.new(["Dave Thomas","Andy Hunt", "Chad Fowler"],"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide","(The Facets of Ruby)","Pragmatic Bookshelf", "4 Edition", "(July 7, 2013)",["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])

	@lib2 = Libros.new(["Hola","Paco"],"numero 1", "numero 2", "numero 3", "numero 4", "numero 5", ["11233","123312312"])
	@lista = Lista.new()
	@lista.push(@lib)
	@lista.push(@lib2)
	@rev = Revista.new("Alfonso","Cosmos","(Sept 19, 2015)","123456", "Magik","4th Edition", "1233-12323123")
	@rev3 = Revista.new("Alfonso","Cosmos","(Sept 19, 2015)","123456", "Magik","4th Edition", "1233-12323123")
	@rev2 = Revista.new("Benito","Analogia","(Ene 20, 2014)","654321", "Aluncinant","1th Edition", "3123-555466")

	end

	describe "Bibilo" do
	
		it "Debe existir un Nodo de la lista con sus datos y su siguiente" do 
		nodo = Node.new(@lib,nil,nil)
 		expect(nodo.value).to equal(@lib)
		expect(nodo.next).to equal(nil)
		expect(nodo.prev).to equal(nil)
		end
       
	end
	describe "List" do
	
		it "Se puede extraer un elemento" do
		aux = @lista.pop()
		expect(aux).to eq(@lib)
		end		

		it "Se puede insertar un elemento" do	
		@lista.push(@lib2)
		aux = @lista.pop()
		aux2 = @lista.pop()
		expect(aux2).to eq(@lib2)
		end
		
		it 'Comprueba que la clase Libro tiene como padre Pract6' do
			expect(@lib).to be_kind_of(Pract6)
		end	

		it 'Comprueba que la clase revista tiene como padre Pract6' do
		expect(@rev).to be_kind_of(Pract6)
		end	

		it "Debe existir una lista con su cabeza" do
		@lista.head
		end

		it "Debe existir una lista con su cola" do
		@lista.tail
		end
	end
	
	describe "Comparable" do
		
		it "Probando operador >" do
			expect(@lib < @lib2).to eq (true)
		end
		
		it "Probando operador ==" do
			expect(@rev == @rev3).to eq(true)
		end
		it "Probando operador <" do
			expect(@rev < @rev2).to eq (true)
		end
	end

	describe "Enumerable" do
		it "Existe alguna lista" do
			expect(@lista.any?).to eq(true)

		end

		it "Probando find" do
			expect(@lista.find{|i| i ==@lib}).to eq(@lib)
		end
		
		it "Probando max" do
			aux = @lista.pop()
			expect(@lista.max).to eq(@lista.pop())
		end

		it "Probando min" do
			aux = @lista.pop()
			expect(@lista.min).to eq(@lista.pop())
		end
		
		it "Probando sort" do
			vector = [@lib,@lib2]
			expect(@lista.sort).to eq(vector)
		end 
	
	end

end

