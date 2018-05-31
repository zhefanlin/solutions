# Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

# If the last word does not exist, return 0.

# Note: A word is defined as a character sequence consists of non-space characters only.

# Example:

# Input: "Hello World"
# Output: 5

# RegEx is Not efficient
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    return 0 if s.nil? || s.empty? || s.split(' ').empty?
    w = s[/([a-zA-z]*)([ ]*)$/, 1]
    unless w.nil? || w.empty?
        return w.length
    end
end


# This is more efficient
# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    return 0 if s.nil? || s.empty? || s.split(' ').empty?
    arr = s.split(' ')
    return arr[arr.size-1].length

end