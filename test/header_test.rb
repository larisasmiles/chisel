require 'minitest/autorun'  
require 'minitest/pride'   
require './lib/header.rb'

class HeaderTest < Minitest::Test

  def test_it_exists
    assert HeaderTest.new("text")
  end
  
  def test_header_1
     h = Header.new("#My Life in Desserts\n")
     output = h.header_format(h.text)

     assert_equal "<h1>My Life in Desserts</h1>\n", output
  end
  
  def test_header_2
    h = Header.new("##Chapter 1: The Beginning\n")
    output = h.header_format(h.text)

    assert_equal "<h2>Chapter 1: The Beginning</h2>\n", output
  end

  def test_header_3
    h = Header.new("###Chapter 2: The Middle\n")
    output = h.header_format(h.text)

    assert_equal "<h3>Chapter 2: The Middle</h3>\n", output
  end
  
  def test_if_header_format_works_with_markdown_characters
    h = Header.new("###My _Life_ in *Desserts*")
    output = h.header_format(h.text)

    assert_equal "<h3>My _Life_ in *Desserts*</h3>\n", output
  end
  
  def test_test_if_header_format_works_with_html_characters
    h = Header.new("###My <em>Life</em> in <strong>Desserts</strong>")
    output = h.header_format(h.text)
    assert_equal "<h3>My <em>Life</em> in <strong>Desserts</strong></h3>\n", output
  end

  

end


  





