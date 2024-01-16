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
    Node? temp = head;

    while (temp != null) {
      Node? next = temp.next;
      while (next != null && next.data == temp.data) {
        next = next.next;
      }
      temp.next = next;
      if (next == tail) {
        tail = temp;
      }
      temp = next;
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
  print('the array after inserting is');
  newlist.display();
  print('--------------');
  newlist.removeduplicates(10);
  newlist.removeduplicates(70);
  print('the array after removing duplicate is');
  newlist.display();
}
