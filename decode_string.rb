# Given an encoded string, return its decoded string.

# The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.

# You may assume that the input string is always valid; there are no extra white spaces, square brackets are well-formed, etc. Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there will not be input like 3a or 2[4].

# The test cases are generated so that the length of the output will never exceed 105.

 

# Example 1:

# Input: s = "3[a]2[bc]"
# Output: "aaabcbc"

# Example 2:

# Input: s = "3[a2[c]]"
# Output: "accaccacc"

# Example 3:

# Input: s = "2[abc]3[cd]ef"
# Output: "abcabccdcdcdef"

 

# Constraints:

#     1 <= s.length <= 30
#     s consists of lowercase English letters, digits, and square brackets '[]'.
#     s is guaranteed to be a valid input.
#     All the integers in s are in the range [1, 300].

# @param {String} s
# @return {String}
def decode_string(s)
  return s unless s.include?('[')

  result = ""
  depth = 0
  multiplier = ""
  substring = ""
  s.chars.each do |c|
      if c == ']' && depth == 1
          result += decode_string(substring) * multiplier.to_i
          multiplier = ""
          substring = ""
          depth -= 1
      elsif c == '['
          substring += c if depth > 0
          depth += 1
      elsif c == ']'
          depth -= 1
          substring += c if depth > 0
      elsif depth > 0
          substring += c
      elsif c =~ /[0-9]/
          multiplier += c
      else
          result += c
      end
  end

  result
end