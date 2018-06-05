
# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}

# Recursive
def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return false if p.nil? && !q.nil?
    return false if !p.nil? && q.nil?
    return false if p.val != q.val
    
    if is_same_tree(p.left, q.left) == true && is_same_tree(p.right, q.right) == true
        
        return true
    else 
        return false
    end
end