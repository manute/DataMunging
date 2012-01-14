class Weather
 
 @@weather_file=File.dirname(__FILE__) + "/dat/weather.dat"
 
 def exist
   File.exists?(File.open(@@weather_file))
 end
 
 def proceed_dat
  tokens=[]
  IO.foreach(@@weather_file) do |line| 		
	if (($. >8 ) && ($. <40 ))#numbers from line 9 to 39.starts 0
		tokens.push( line.split(' '))
    end 
  end
  smallest_spreed(tokens)
 end

  def smallest_spreed(tokens)
	items=[]
	tokens.each() do |token|  
		day = token[0]
		max = token[1]
		min = token[2]
		delta = max.to_i - min.to_i	
		items << [day, delta] if items.size == 0 	
		current_items = items[0][1]
        if delta <= current_items
          items.clear if delta < current_items
          items << [day, delta]
		  
        end
	end
	 items[0][0].to_i
  end
end