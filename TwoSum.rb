# Given an array of integers, return indices of the two numbers such that they add up to a specific target.

# You may assume that each input would have exactly one solution, and you may not use the same element twice.

# Example:
# Given nums = [2, 7, 11, 15], target = 9,

# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].


# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = {}
    nums.each_with_index do |n,i|
        h[i] = n
    end

    h.each do |k,v|
        if h.has_value?(target - v) && h.key(target - v) != k
            return [k, h.key(target - v)]
        end
    end
end