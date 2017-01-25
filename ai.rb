class AI
	attr_reader :turns, :blackPegs, :whitePegs
	def initialize
		@blackPegs=0
		@whitePegs=0
		@secretCode=[]
		@colors=["blue","green","orange","purple","red","yellow"]
		generateCode
	end

	def generateCode
		0.upto(3) do |position|
			@secretCode[position]= @colors[rand(0...@colors.length)]
		end
	end
    
	def revealCode
		return @secretCode
	end

	def validInput?(input)
		if input.length!=4
			return false
		end
		input.map!(&:downcase)
		arr=input-@colors
		if arr.empty?
			return true
		else
			return false
		end
	end
	
	def feedback(input)
		#guess=arr_guess
		@blackPegs=0
		@whitePegs=0
		guess=input.dup
		sCode=@secretCode.dup
		
		0.upto(@secretCode.length-1) do |i| #correct color and position
			if @secretCode[i]==guess[i]
				@blackPegs+=1
				guess[i]=nil
				sCode[i]=nil

            end
		end
		
        0.upto(guess.length-1) do |i|#correct color but wrong position
        	unless sCode.index(guess[i]).nil?
        	 if guess[i]!=nil
        	    pos=sCode.index(guess[i])
        	    sCode[pos]=nil
        	    @whitePegs+=1
        	 end
        	end
        end
        puts "black pegs: #{@blackPegs}"
		puts "white pegs: #{@whitePegs}"
	end


end

