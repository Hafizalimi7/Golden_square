class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @furthest_word_read = 0

  def title
    return @title
  end

  def contents
    return @contents
  end

  def count_words
    return @contents.split(" ").length
  end

  def reading_time(wpm)
    fail "Reading speed must be 0." unless wpm.positive?
    return (count_words / wpm.to_f).ceil
    end
  end

  def reading_chunk(wpm, minutes) 
  end
end