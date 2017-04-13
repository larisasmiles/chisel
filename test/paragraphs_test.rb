require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraphs'

class ParagraphTest < Minitest::Test

  def test_if_it_exists
    assert Paragraph.new
  end
  


  end