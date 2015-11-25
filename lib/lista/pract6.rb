require "lista/version"

    class Pract6
	   include Comparable
           attr_reader :autor, :titulo,:fecha
    
	def initialize(a,t,pub)
		@autor = a
		@titulo = t
		@fecha = pub
	end

	def getAutor()
		@autor
	end
       
	def getTitulo()
		@titulo
	end
      
	def getFecha()
		@fecha
	end
       
	def to_s(valor)
		"#{@valor}"
	end
       
	def mostrar()
        
		referencia = getAutor().to_s + '\n' + getTitulo().to_s + '\n' + getFecha().to_s + '\n' 
         referencia
	end
	
	def <=>(other)
		@autor <=> other.autor
		@titulo <=> other.titulo
		@fecha <=> other.fecha
	end
	
	def ==(other)
		@autor == other.autor
		@titulo == other.titulo
		@fecha == other.fecha
	end
    end

