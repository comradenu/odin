def recur_search(string, substring)
  if not string.include?(substring)
    return 0
  else
    return 1 + recur_search(string[string.index(substring)+substring.length..-1], substring)
  end
end

def substring(string, dict)
  phrase = string.downcase.gsub(/[^A-Za-z ]/, '')
  sub_counts = {}
  dict.each do |substr|
    sub_counts[substr] = recur_search(phrase, substr)
  end
  sub_counts
end
