# frozen_string_literal: true

# This method takes a string(one  or more words) and runs a check
# through a dictionary which is passed as an argument
# and counts every appearance of all substrings in the dictionary
# then finally returns a hash with substrings as keys and count of apperance as values
def substrings(string, dictionary)
  result = {}
  string_case = string.downcase

  dictionary.each do |str|
    str_lower = str.downcase
    str_length = str_lower.length
    max_index = string_case.length - str_length
    count = 0

    (0..max_index).each do |i|
      count += 1 if string_case[i, str_length] == str_lower
    end
    result[str] = count unless count.zero?
  end
  result
end

dictionary = %w[below down go going horn how howdy it
                i low own part patner sit]
substrings("Howdy patner, sit down! How's it going?", dictionary)
