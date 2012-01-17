require 'test/unit'
require File.join(File.dirname(__FILE__), 'file_utils') 

class WeatherTest < Test::Unit::TestCase
	
	@@weather_file=File.dirname(__FILE__) + "/dat/weather.dat"
	@@weather=FileUtils.new(@@weather_file,8,40)
	
	def test_weather_file_open
		assert_equal(true ,@@weather.exist)
	end

	def test_weather_iterate
		assert_equal(14 , @@weather.dat(0,1,2).to_i)
	end
	

end