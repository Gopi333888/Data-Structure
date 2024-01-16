class Node {
  int? data;
  Node? next;
  Node(int this.data);
}

class Linkedlist {
  Node? head, tail;
  void addnode(int data) {
    Node newnode = new Node(data);
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
    }
    tail = newnode;
  }

  void display() {
    Node? temp = head;
    if (temp == null) {
      print("Empty");
    }
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
    print("......................");
  }

  void delete(int data) {
    Node? temp = head;
    Node? prev;
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }
    if (temp == head) {
      head = temp?.next;
      return;
    }
    if (temp == tail) {
      prev?.next = tail;
      tail?.next == null;
      return;
    }
    prev?.next = temp?.next;
  }

  void insert(int tonext, int data) {
    Node newnode = new Node(data);
    Node? temp = head;
    while (temp != null && temp.data != tonext) {
      temp = temp.next;
    }
    if (temp == tail) {
      tail?.next = newnode;
      tail = newnode;
    } else {
      newnode.next = temp?.next;
      temp?.next = newnode;
    }
  }
}

void main() {
  Linkedlist newlist = new Linkedlist();
  newlist.addnode(10);
  newlist.addnode(20);
  newlist.addnode(30);
  newlist.addnode(40);
  newlist.addnode(50);
  newlist.addnode(60);
  newlist.display();
  // newlist.delete(10);
  // newlist.delete(30);
  // newlist.delete(60);
  newlist.insert(30, 100);
  newlist.display();
}
