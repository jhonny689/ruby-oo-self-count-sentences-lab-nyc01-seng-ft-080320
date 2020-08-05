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
    if self =~ /[.!?]/ #is self match the regular expression
      res = self.split(/[.!?]\s+/)
      return res.length
    else
      return 0
    end
  end
end