# Given a non-empty array of digits representing a non-negative integer, plus one to the integer.

# The digits are stored such that the most significant digit is at the head of the list, and each element in the array contain a single digit.

# You may assume the integer does not contain any leading zero, except the number 0 itself.

# Example 1:

# Input: [1,2,3]
# Output: [1,2,4]
# Explanation: The array represents the integer 123.
# Example 2:

# Input: [4,3,2,1]
# Output: [4,3,2,2]
# Explanation: The array represents the integer 4321.
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    n = digits.size
    x = 0
    pointer = n - 1
    k = 1
    while pointer >= 0
        x = x + digits[pointer] * k
        k = k * 10
        pointer = pointer -1
    end
    x = x+1
    arr = x.to_s.chars
    arr.each_with_index do |a,i|
        arr[i] = a.to_i
    end
     return arr   
end