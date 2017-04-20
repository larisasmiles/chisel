require "minitest/autorun"
require "minitest/pride"
require "./lib/chisel.rb"

class ChiselTest < Minitest::Test
  
  def test_if_input_file_exists
    input_file = ARGV[0]

    assert input_file
  end
end

