require 'pry'

class String

  def sentence?
    self[-1] == '.'

  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] =='!'
  end

  def count_sentences
    count = 0
    self.split.each do |word|
      if word.question? || word.exclamation? || word.sentence?
        count += 1
      end
    end
    count
  end
end
