require "lista/version"

    class Libros < Pract6
           attr_reader :autor, :titulo, :serie, :editorial, :edicion, :fecha, :isbn
    
       def initialize(a,t,s,e,x,pub,i)
            @autor = a
            @titulo = t
            @serie = s
            @editorial = e
            @edicion = x
            @fecha = pub
            @isbn = i
       end
       
end
