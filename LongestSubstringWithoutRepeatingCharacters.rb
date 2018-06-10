# Given a string, find the length of the longest substring without repeating characters.

# Examples:

# Given "abcabcbb", the answer is "abc", which the length is 3.

# Given "bbbbb", the answer is "b", with the length of 1.

# Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    max = 0
    arr = s.chars
    arr.each_with_index do |c,i|
        h = {}
        arr[i,s.length-i].each_with_index do|d,j|
          unless h.include?(d)
            h[d] = j
            if h.length > max
              max = h.length
            end               
          else 
            break
          end
        end
    end
    return max
end

