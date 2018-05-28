# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

# Example:

# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
# Follow up:

# If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.


# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    return nums[0] if nums.size == 1
    sum = nums[0]
    
    nums.each_with_index do |num,index|
            temp = 0
            (0..nums.size-index).each do |i|
                unless nums[index+i].nil?
                    temp = temp + nums[i+index]
                end
                if temp > sum
                    sum = temp
                end
            end
        end
    return sum
end

# Note, this is not a sulotion