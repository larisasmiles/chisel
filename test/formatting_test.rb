require 'minitest/autorun'
require 'minitest/pride'
require './lib/formatting.rb'

class FormattingTest < Minitest::Test

  def test_if_it_exists

   assert Formatting.new("text")
  end
  
  def test_if_it_coverts_to_italics
    f = Formatting.new("You just *have* to try the cheesecake")
    output = f.italics_converter(f.text)

    assert_equal "<em>You just have to try the cheesecake</em>", output
  end

  def test_if_it_converts_to_bold
    f = Formatting.new("Ever since it appeared in **Food and Wine** this place has been packed every night.")
    output = f.bold_converter(f.text)
    

    assert_equal "Ever since it appeared in <strong>Food and Wine</strong> this place has been packed every night.", output
  end
  
  def test_if_it_converts_to_amp
    f = Formatting.new("Ever since it appeared in Food & Wine")
    output = f.amp_converter(f.text)

    assert_equal "Ever since it appeared in Food &amp Wine", output
  end
  
end

