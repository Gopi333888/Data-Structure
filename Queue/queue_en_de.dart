class Node {
  int? data;
  Node? next;

  Node(int data) {
    this.data = data;
  }
}

class Queue {
  Node? front;
  Node? rear;

  void enqueue(int data) {
    Node newNode = new Node(data);
    if (rear == null) {
      front = rear = newNode;
    } else {
      rear?.next = newNode;
      rear = newNode;
    }
  }

  void dequeue() {
    if (front == null) {
      print("Empty");
      return;
    }
    front = front?.next;
  }

  void display() {
    Node? temp = front;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  Queue queue = new Queue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.enqueue(6);
  queue.enqueue(7);
  queue.enqueue(8);
  queue.dequeue();
  queue.display();
}
