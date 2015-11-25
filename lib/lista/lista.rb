Node = Struct.new(:value,:next,:prev)

class Lista
	attr_reader :head, :tail
	def initialize()
		@head
		@tail
	end

	def pop()
		if @head != nil
			aux = @head
			@head = @head.next
			@head.prev = nil
			return aux
			else
				return nil
		end
	end

	
	def push(value)
		if @head !=nil
			@tail = @head
			while @tail.next != nil
				@tail = @tail.next
			end
			#mirar prev en push.
			@tail.next = Node.new(value,@tail,nil)
			@tail = @tail.next
		else
			@head = Node.new(value,nil,nil)
			@tail = @head
		end	
	end



end
