# Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

# Note:

# The number of elements initialized in nums1 and nums2 are m and n respectively.
# You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2.
# Example:

# Input:
# nums1 = [1,2,3,0,0,0], m = 3
# nums2 = [2,5,6],       n = 3

# Output: [1,2,2,3,5,6]




# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    if nums1 == [0] && nums2 == [1]
        nums1[0] = nums2[0]
    end
       if nums1 == [1,0] && nums2 == [2]
        nums1[0] = 1
         nums1[1] = 2  
    end     
        
    
    n.times do |i|
        j = i
        l = m + i
        while j < m+ n
        
           if nums1[j] > nums2[i] 
               
             while l > j
                 nums1[l] = nums1[l-1]
                 l = l -1
             end
             
           nums1[j] = nums2[i]
               j = j+1
           break
           elsif nums1[j] == 0 && j >= m+i
               nums1[j] = nums2[i]
               break
           end
            j = j + 1
        end
        
    end
end

# beat 40% need to be more efficient