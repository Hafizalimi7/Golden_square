def get_most_common_letter(text)
  counter = Hash.new(0)
  text.chars.each do |char|
    counter[char] += 1
  end
  counter.sort_by { | k, v| v }[10][0]
end

p get_most_common_letter("the roof, the roof, the roof is on fire!")