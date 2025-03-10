# frozen_string_literal: true

# This method shifts characters in a string by a given factor(in this case shift)
def cipher(string, shift)
  shifted_array = []

  # Transform all characters to lowercase, get the bytes and map them
  string.downcase.bytes.map do |c|
    shifted_array.push(c + shift < 123 ? (c + shift) : (c + shift - 26))
  end
  shifted_array.pack('c*') # apply directive as many times as possible
  shifted_array
end

cipher('What a string!', 4)
