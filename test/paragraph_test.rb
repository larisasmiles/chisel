require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph.rb'

class ParagraphTest < Minitest::Test

  def test_if_it_exists
    assert Paragraph.new("text")
  end

  def test_if_paragraph_converts
    p = Paragraph.new("This is the first line of the paragraph.")
    assert_equal "<p>This is the first line of the paragraph.</p>", p.html_format
  end
  
  def test_mulitple_lines_without_new_line_character
    p = Paragraph.new("You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.")
    assert_equal "<p>You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.</p>", p.html_format
  end

  def test_mulitple_lines_with_new_line_characters
    p = Paragraph.new("You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.")
    assert_equal "<p>You just have to try the cheesecake, he said. Ever since it appeared in Food & Wine this place has been packed every night.</p>", p.html_format
  end
end
