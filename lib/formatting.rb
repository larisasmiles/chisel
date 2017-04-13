class Formatting
  attr_reader :text

  def initialize(text)
    @text = text
    # @html_format = formatting_converter
  end

  # def formatting_converter
  #   if amp
  #     amp_converter
  #   elsif bold?
  #     bold_converter
  #   else
  #    italics_converter
  #   end
  # end
  
  def italics_converter(text)
    middle_text = text.delete("*").delete("_").strip
    "<em>#{middle_text}</em>"
  end

  def bold_converter(text)
    middle_text = text.delete("**").strip
    "<strong>#{middle_text}</strong>"
  end
  
  def amp_converter(text)
    text.gsub("&", "&amp")
  end
  
end


  
