Node = Struct.new(:value,:next,:prev)

class Lista
	include Enumerable
	attr_reader :head, :tail
	def initialize()
		@head = nil
		@tail = nil
	end

	def push(value)
		if @head == nil
	@head = Node.new(value,nil,nil)
			@tail = @head

		else
			aux = @head
			while aux.next != nil
				aux = aux.next
			end
			#mirar prev en push.
			aux.next = Node.new(value,nil,@tail)
			@tail = @tail.next
		
		end	
	end



	def pop()
		if @head == nil
			return nil
		elsif @head == @tail
			aux = @head
			@head = nil
			@tail = nil
			return aux			
		else
			aux = @head
			@head = @head.next
			@head.prev = nil
			return aux		
		end
	end

	




end
