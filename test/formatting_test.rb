require 'minitest/autorun'
require 'minitest/pride'
require './lib/formatting.rb'

class FormattingTest < Minitest::Test

  def test_it_exists

    assert FormattingTest.new('<strong>#{middle_text}</strong>')
  end

  def test_convert_italics
    text = Formatting.new("*You just *have* to try cheesecake")

    assert_equal '<em>You just have to try cheesecake</em>', text.formatting_converter
  end

  def test_convert_bold
    text = Formatting.new("**Food and Wine**")

    assert_equal '<strong>Food and Wine</strong>', text.formatting_converter
  end

  def test_convert_amp
    string = Formatting.new("Food & Wine")

    assert_equal "Food &amp; Wine", string.html_format
  end

  def test_bold_with_new_line_characters
    text = Formatting.new("**Food and Wine**\n")

    assert_equal "<strong>Food and Wine</strong>", text.formatting_converter
  end

  def test_italics_with_new_line_character
    text = Formatting.new("You just *have* to try the cheesecake\n")

    assert_equal "<em>You just have to try the cheesecake</em>", text.formatting_converter
  end

  def test_convert_amp_with_new_line_character
    text = Formatting.new("Food & Wine\n")

    assert_equal "Food &amp; Wine\n", text.formatting_converter
  end
end
