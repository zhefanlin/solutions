# Given a sorted linked list, delete all duplicates such that each element appear only once.

# Example 1:

# Input: 1->1->2
# Output: 1->2
# Example 2:

# Input: 1->1->2->3->3
# Output: 1->2->3

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end



# Recursive
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    return head if head.nil? || head.next.nil?
    
    next_node = head.next
    new_head = delete_duplicates(next_node)

    if next_node.val == head.val
        head.next = next_node.next
    end

    return head
end


# Iterative
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    return head if head.nil? || head.next.nil?
    
    pointer = head

    while !pointer.next.nil?

            if pointer.val == pointer.next.val
                pointer.next = pointer.next.next
            else
                pointer = pointer.next
            end 
    end
    return head
end