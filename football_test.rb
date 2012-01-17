require 'test/unit'
require File.join(File.dirname(__FILE__), 'file_utils') 

class FootballTest < Test::Unit::TestCase

	@@football_file=File.dirname(__FILE__) + "/dat/football.dat"
	@@football=FileUtils.new(@@football_file,5,27)
	
	def test_football_file_open
		assert_equal(true , @@football.exist)
	end
	
	def test_football_iterate 
		assert_equal('Aston_Villa', @@football.dat(1,6,8))
	end


end