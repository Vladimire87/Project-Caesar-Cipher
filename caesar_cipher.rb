
def caesar_cipher(string, key)
  caesar_cipher = ''
  string.each_char do |l|
    cipher = if l >= 'a' && l <= 'z'
               ((l.ord - 'a'.ord + key) % 26 + 'a'.ord).chr
             elsif l >= 'A' && l <= 'Z'
               ((l.ord - 'A'.ord + key) % 26 + 'A'.ord).chr
             else
               l
             end
    caesar_cipher << cipher
  end
  caesar_cipher
end

puts caesar_cipher(
  "Let's take it one step further\nand print out just the favorite ice cream flavors.\nOnce again, we'll need to iterate down into that level of the hash,\nthen we can access the favorite ice cream array and print out the flavors:", 2
)
