# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.
# Note:

# All given inputs are in lowercase letters a-z.

# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
	return "" if strs.nil? || strs.empty? || strs.join('').empty?
	return strs.first if strs.size == 1
    h = {}
    strs.each do |str|
    	arr = str.split(//)
    	arr.size.times do |i|
    		s = arr.first(i+1).join('')
    		unless h.include?(s)
    			h[s] = 1
    		else
    			h[s] = h[s]+1
    		end
    	end
    end
    h = h.select{|k,v| v == strs.size}.keys
    if h.nil? || h.empty?
    	return ""
    else
    	return h.inject { |f, s| f.length >= s.length ? f : s }
    end
end