require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # array = self.split(/[.!?]/)
    # array2 = array.reject(&:empty?)
    # # binding.pry
    # array2.count
    self.split(/[.!?]/).reject(&:empty?).count
  end
end
