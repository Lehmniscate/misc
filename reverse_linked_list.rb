# Given the head of a singly linked list, reverse the list, and return the reversed list.

 

# Example 1:

# Input: head = [1,2,3,4,5]
# Output: [5,4,3,2,1]

# Example 2:

# Input: head = [1,2]
# Output: [2,1]

# Example 3:

# Input: head = []
# Output: []

 

# Constraints:

#     The number of nodes in the list is the range [0, 5000].
#     -5000 <= Node.val <= 5000

 

# Follow up: A linked list can be reversed either iteratively or recursively. Could you implement both?


# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  return head if head.nil? || head.next.nil?

  last = head.next
  prev = head
  prev.next = nil

  while(last.next) do
      temp = last.next
      last.next = prev
      prev = last
      last = temp
  end
  last.next = prev
  return last
end