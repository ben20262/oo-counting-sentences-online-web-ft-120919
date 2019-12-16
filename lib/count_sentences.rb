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
      letter = self[i]
      p_letter = self[i - 1]
      puts "Letter is #{letter}"
      puts "P is #{p_letter}"
      if letter == "!" || letter == "." || letter == "?" && p_letter != "!" || p_letter != "." || p_letter != "?"
          count += 1
      end
    end
    count
  end
end
