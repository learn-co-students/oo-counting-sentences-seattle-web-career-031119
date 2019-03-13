require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    dummy_array = self.split(/[!.?]/).compact
    dummy_array.delete_if {|sentence| sentence == ""}
    dummy_array.count
  end
end
