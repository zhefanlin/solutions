# Implement int sqrt(int x).

# Compute and return the square root of x, where x is guaranteed to be a non-negative integer.

# Since the return type is an integer, the decimal digits are truncated and only the integer part of the result is returned.

# Example 1:

# Input: 4
# Output: 2
# Example 2:

# Input: 8
# Output: 2
# Explanation: The square root of 8 is 2.82842..., and since 
#              the decimal part is truncated, 2 is returned.

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    y = 1.0
    while (y*y - x).abs > 0.1
        y = (x/y + y)/2
        
    end
    return y.to_i
end