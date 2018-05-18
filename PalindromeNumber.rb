# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    return false if x < 0 || x == 10
    return true if x == 0
    return false if x % 10 == 0

    y = 1
    z = 0
    i = 0
    while x/y > 0
    	i = i+1
    	z = z * 10 + (x/y)%10
    	y = y * 10
    end
    if z == x
    	return true
    else
    	return false
    end
end