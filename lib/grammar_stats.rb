class GrammarStats
  def initialize
      @total = 0
      @pass = 0
  end
  
  def check(text)
    first_char = text[0]
    last_char = text[-1]
    @total += 1
    if (first_char == "h".upcase) or (first_char == "m".upcase) && (last_char == ".") or (last_char == "?")
      @pass += 1
      return true
    else
      return false
    end
  end

  def percentage_good
    return @pass * 100 / @total
  end
end
