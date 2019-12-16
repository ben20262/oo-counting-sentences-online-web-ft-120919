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
    count = 0
    self.split.each_index do |i|
      puts i
      word = self.split[i]
      puts word
      if word.include? "!"
        count += 1
      elsif word.include? "?"
        count += 1
      elsif word.include? "."
        count += 1
      end
    end
    count
  end
end
