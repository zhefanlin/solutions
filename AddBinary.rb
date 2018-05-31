# Given two binary strings, return their sum (also a binary string).

# The input strings are both non-empty and contains only characters 1 or 0.

# Example 1:

# Input: a = "11", b = "1"
# Output: "100"
# Example 2:

# Input: a = "1010", b = "1011"
# Output: "10101"


# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    sum = a.to_i(2) + b.to_i(2)
    return sum.to_s(2)
end

# Implement Adder ??
