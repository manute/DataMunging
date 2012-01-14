require 'test/unit'
require File.join(File.dirname(__FILE__), 'weather') 

class WeatherTest < Test::Unit::TestCase
	
	def test_weather_file_open
		assert_equal(true , Weather.new.exist)
	end

	def test_weather_iterate
	 
		assert_equal(14 , Weather.new.proceed_dat)
	end
	

end