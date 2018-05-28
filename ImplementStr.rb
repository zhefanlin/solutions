# Implement strStr().

# Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

# Example 1:

# Input: haystack = "hello", needle = "ll"
# Output: 2
# Example 2:

# Input: haystack = "aaaaa", needle = "bba"
# Output: -1
# Clarification:

# What should we return when needle is an empty string? This is a great question to ask during an interview.

# For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.empty? || haystack == needle
    return -1 if haystack.nil? || haystack.empty?
    arr = haystack.chars
    length = needle.length
    output = -1
    if haystack.length >length
	    arr.each_with_index do |c,i|
	    	next unless haystack[i,length] == needle
	    	output = i
	    	break
	    end
	else
 		output = -1
	end
	return output
end