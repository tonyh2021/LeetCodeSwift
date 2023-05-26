// https://leetcode.com/problems/remove-nth-node-from-end-of-list/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

/**
 1. Two-pointer technique: One slow-runner and the other fast-runner.
 2. Dummy Node.
 */

class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        let dummy = ListNode()
        dummy.next = head
        
        var fastPointer: ListNode = dummy
        var slowPointer: ListNode = dummy
        var i = 1
        
        while let next = fastPointer.next {
            fastPointer = next
            if i > n, let slowNext = slowPointer.next {
                slowPointer = slowNext
            }
            i += 1
        }
        
        slowPointer.next = slowPointer.next?.next
        
        return dummy.next
    }
}

/**
 Time: O(n)
 */
