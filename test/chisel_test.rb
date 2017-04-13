require "minitest/autorun"
require "minitest/pride"
require "./lib/chisel.rb"

class ChiselTest <Minitest::Test
  
  def test_if_it_exist
    assert Chisel
  end
end

