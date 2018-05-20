
# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

# Example:

# Input: 1->2->4, 1->3->4
# Output: 1->1->2->3->4->4

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)

	return l1 if l2.nil?
	return l2 if l1.nil?
	if l1.val < l2.val
		l1.next = merge_two_lists(l1.next, l2)
		return l1
	else 
		l2.next = merge_two_lists(l2.next, l1)
		return l2
	end

end