class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(int data) {
    this.data = data;
  }
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
      return;
    } else {
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void removeduplicates(int data) {
    Node? current = head;

    while (current != null) {
      Node? next = current.next;
      while (next != null && next.data == current.data) {
        next = next.next;
      }
      current.next = next;
      if (next == tail) {
        tail = current;
      }
      current = next;
    }
  }
}

void main() {
  Linkedlist newlist = new Linkedlist();
  newlist.addnode(10);
  newlist.addnode(10);
  newlist.addnode(10);
  newlist.addnode(40);
  newlist.addnode(50);
  newlist.addnode(60);
  newlist.addnode(70);
  newlist.addnode(70);
  newlist.addnode(90);
  newlist.display();
  print('--------------');
  newlist.removeduplicates(10);
  newlist.removeduplicates(70);
  newlist.display();
}
