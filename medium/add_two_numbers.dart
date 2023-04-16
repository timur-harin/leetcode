class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    return sum(l1, l2, 0);
  }

  ListNode? sum(ListNode? l1, ListNode? l2, int reminder) {
    ListNode? result;
    var current = (l1?.val ?? 0) + (l2?.val ?? 0) + reminder;
    if (l1?.next != null || l2?.next != null) {
      result = ListNode(current % 10, sum(l1?.next, l2?.next, current ~/ 10));
    } else {
      result = ListNode(
          current % 10, current ~/ 10 > 0 ? ListNode(current ~/ 10) : null);
    }
    return result;
  }
}
