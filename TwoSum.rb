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