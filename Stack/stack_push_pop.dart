class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

class Stack {
  Node? top;
  void pushData(int data) {
    Node newNode = new Node(data);

    if (top == null) {
      top = newNode;
    } else {
      newNode.next = top;
      top = newNode;
    }
  }

  void popData() {
    if (top == null) {
      print("No Data Is Here");
      return;
    } else {
      top = top?.next;
    }
  }

  void display() {
    Node? temp = top;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Stack stack = new Stack();
  stack.pushData(1);
  stack.pushData(2);
  stack.pushData(3);
  stack.pushData(4);
  stack.pushData(5);
  stack.pushData(6);
  stack.pushData(7);
  stack.popData();
  stack.display();
}
