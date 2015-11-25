require "lista/version"

class Publicaciones <  Pract6
           attr_reader :autor, :titulo, :fecha
    
       def initialize(a,t,pub)
            @autor = a
            @titulo = t
            @fecha = pub
       end

end

class Revista < Pract6
           attr_reader :autor, :titulo, :fecha, :ref, :editorial, :edicion, :issn
    
       def initialize(a,t,pub,ref,e,ed,issn)
            @autor = a
            @titulo = t
            @fecha = pub
	    @ref = ref
	    @editorial = e
	    @edicion = ed
	    @issn = issn
       end
end

class Periodico < Pract6
	    attr_reader :autor, :titulo,:fecha, :categoria
    
       def initialize(a,t,pub,cat)
            @autor = a
            @titulo = t
            @fecha = pub
	    @categoria = cat
       end

end
