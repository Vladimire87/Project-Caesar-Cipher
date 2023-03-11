def caesar_cipher(string, key)
  caesar_cipher = ""
  string.each_char do |l|
    if l >= "a" && l <= "z"
      cipher = ((l.ord - "a".ord + key) % 26 + "a".ord).chr
    elsif l >= "A" && l <= "Z"
      cipher = ((l.ord - "A".ord + key) % 26 + "A".ord).chr
    else
      cipher = l
    end
    caesar_cipher << cipher
  end
  caesar_cipher
end
