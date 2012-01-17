
class FileUtils
	attr_accessor :file,:line_from,:line_to
	
    def initialize(f ,line_f, line_t)
		@file=f
		@line_from=line_f
		@line_to=line_t
	end

	def exist
		File.exists?(File.open(@file))
	end
	
	def dat(row1,row2,row3)	
	 tokens=[]	
	 IO.foreach(@file) do |line| 		
		if (($. >@line_from ) && ($. <@line_to ))#numbers from line to .starts 0
		  row=line.split(' ')
		  index=row[row1]
		  valueMax=row[row2].to_i 
		  valueMin=row[row3].to_i 
		  if(valueMax>=valueMin)
		    smallest_diff=valueMax-valueMin
		  else
		  	smallest_diff=valueMin-valueMax
		  end	
		 
		  tokens << [index,smallest_diff] if tokens.size==0 
		  smallest_diff_global=tokens[0][1]
		  if smallest_diff<smallest_diff_global && smallest_diff>0
		 	tokens.clear
		 	tokens << [index,smallest_diff] 						
		  end				
	    end
	  end	
	  tokens[0][0]	
	end

end