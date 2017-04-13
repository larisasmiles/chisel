class Formatting

  attr_reader :text, :html_format

  def initialize(text)
    @text = text
    @html_format = formatting_converter
  end

  def formatting_converter
    if amp?
      amp_converter
    elsif bold?
      bold_converter
    else
      italics_converter
    end
  end

  def amp?
    text.include?("&")
  end

  def bold?
    text.include?("**")
  end

  def amp_converter
    text.gsub("&", "&amp;")
  end

  def bold_converter
    middle_text = text.delete("*").strip
    "<strong>#{middle_text}</strong>"
  end

  def italics_converter
    middle_text = text.delete("*").delete("_").strip
    "<em>#{middle_text}</em>"
  end

end