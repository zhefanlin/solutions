
# Given a 32-bit signed integer, reverse digits of an integer.

# Example 1:

# Input: 123
# Output:  321
# Example 2:

# Input: -123
# Output: -321
# Example 3:

# Input: 120
# Output: 21






# @param {Integer} x
# @return {Integer}
def reverse(x)
    y = 0
    while x > 0
        y = y * 10 + x % 10
        x = x / 10
    end
    if x < 0
        x = 0 - x
        while x > 0
            y = y * 10 + x % 10
            x = x / 10
        end  
        y = 0 - y
    end

    if y > 2147483647 || y < -2147483647
        y = 0
    end    
    return y
end