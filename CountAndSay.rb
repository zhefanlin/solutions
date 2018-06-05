# The count-and-say sequence is the sequence of integers with the first five terms as following:

# 1.     1
# 2.     11
# 3.     21
# 4.     1211
# 5.     111221
# 1 is read off as "one 1" or 11.
# 11 is read off as "two 1s" or 21.
# 21 is read off as "one 2, then one 1" or 1211.
# Given an integer n, generate the nth term of the count-and-say sequence.

# Note: Each term of the sequence of integers will be represented as a string.

# Example 1:

# Input: 1
# Output: "1"
# Example 2:

# Input: 4
# Output: "1211"

# @param {Integer} n
# @return {String}
def count_and_say(n)

    temp_str = "1"
    (n-1).times do
        temp_h = {}
        arr = temp_str.chars
        temp_str = ''
        arr.each_with_index do |l,i|
            unless arr[i+1].nil?
                if temp_h.include?(l)
                    temp_h[l] = temp_h[l] + 1
                else
                     temp_h[l] = 1
                end                
                unless arr[i+1] == arr[i]
                    temp_str = "#{temp_str}#{temp_h[l]}#{l}"
                    temp_h = {}
                end
            else
                if temp_h.include?(l)
                    temp_str = "#{temp_str}#{temp_h[l]+1}#{arr[i]}"
                else
                    temp_str = "#{temp_str}#{1}#{arr[i]}"
                end
            end
        end
    end
    
    return temp_str
    
end