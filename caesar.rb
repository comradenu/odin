def caesar(phrase, shift)
  
  abc = 'abcdefghijklmnopqrstuvwxyz'
  abc_upper = abc.upcase
  cipher = ''
  
  phrase.each_char.with_index do |chr, ind|
    if abc_upper.include?(chr)
      cipher << abc_upper[(abc_upper.index(chr) + shift) % 26]
    elsif abc.include?(chr)
      cipher << abc[(abc.index(chr) + shift) % 26]
    else
      cipher << chr
    end
  end
  cipher
end
