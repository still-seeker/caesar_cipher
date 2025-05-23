# frozen_string_literal: true

# This method shifts characters in a string by a given factor(in this case shift)
def cipher(string, shift)
  result = ''
  raise ArgumentError unless shift.is_a?(Integer)

  string.each_char do |char|
    char_num = char.ord
    rotation = if char_num.between?(65, 90) || char_num.between?(97, 122)
                 rotate = ((char_num - (char_num < 91 ? 65 : 97) + shift) % 26) + (char_num < 91 ? 65 : 97)
                 rotate.chr
               else
                 char
               end
    result += rotation
  end
  result
end
