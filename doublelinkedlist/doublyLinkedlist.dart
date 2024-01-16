class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(int data) {
    this.data = data;
  }
}

class LinkedList {
  Node? head, tail;

  void add(int data) {
    Node newnode = new Node(data);
    Node? prev;
    if (head == null) {
      head = newnode;
    } else {
      tail?.next = newnode;
      newnode.prev = tail;
    }
    tail = newnode;
  }

  void display() {
    Node? temp;
    temp = head;
    if (head == null) {
      print("Empty");
      return;
    } else {
      print("List is");
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void displayrev() {
    if (head == null) {
      print("Empty");
      return;
    } else {
      print("List is");
      Node? temp;
      temp = tail;
      while (temp != null) {
        print(temp.data);
        temp = temp.prev;
      }
    }
  }

  void delete(int data) {
    Node? temp = head;
    Node? prev;
    Node? trailing;

    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
      trailing = temp?.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == head) {
      head = temp.next;
      head?.prev = null;
    }
    if (temp == tail) {
      tail = prev;
      tail?.next = null;
    }
    prev?.next = temp.next;
    temp.prev = trailing?.prev;
  }

  void insert(int nextto, int data) {
    Node addnodenew = new Node(data);
    Node? temp = head;

    while (temp != null && temp.data != nextto) {
      temp = temp.next;
    }
    if (temp == null) {
      return;
    }
    if (temp == tail) {
      tail?.next = addnodenew;
      addnodenew.prev = tail;
      tail = addnodenew;
      return;
    }

    addnodenew.next = temp.next;
    addnodenew.prev = temp;
    temp.next = addnodenew;
  }

  void insertBefore(int before, int data) {
    Node newnode = Node(data);
    Node? temp = head;

    if (head == null) {
      head = newnode;
      return;
    }

    if (head!.data == before) {
      newnode.next = head;
      head!.prev = newnode;
      head = newnode;
      return;
    }

    while (temp != null && temp.next != null && temp.next!.data != before) {
      temp = temp.next;
    }

    if (temp != null && temp.next != null) {
      newnode.next = temp.next;
      newnode.prev = temp;
      temp.next!.prev = newnode;
      temp.next = newnode;
    } else {
      print("Element $before not found in the list.");
    }
  }
}

void main() {
  LinkedList newlist = new LinkedList();
  newlist.add(12);
  newlist.add(14);
  newlist.add(15);
  newlist.add(16);
  newlist.add(17);
  newlist.add(18);
  newlist.add(19);
  newlist.displayrev();
  newlist.display();
  newlist.delete(12);
  newlist.delete(16);
  newlist.delete(19);
  newlist.display();

  newlist.insert(12, 100);
  newlist.insert(15, 200);
  newlist.insert(19, 300);
  newlist.display();
  newlist.insertBefore(15, 1000);
  newlist.insertBefore(12, 2000);
  newlist.display();
}
