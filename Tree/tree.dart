import 'dart:io';

class Node {
  late int data;
  Node? left, right;
  Node(this.data);
}

class Bst {
  Node? root;
  void insert(int data) {
    Node newnode = Node(data);

    if (root == null) {
      root = newnode;
    } else {
      Node? currentNode = root;
      while (true) {
        if (data < currentNode!.data) {
          if (currentNode.left == null) {
            currentNode.left = newnode;
            break;
          } else {
            currentNode = currentNode.left;
          }
        } else {
          if (currentNode.right == null) {
            currentNode.right = newnode;
            break;
          } else {
            currentNode = currentNode.right;
          }
        }
      }
    }
  }

  void remover(int data) {
    removerHelper(data, null, root);
  }

  void removerHelper(int target, Node? parentNode, Node? currentNode) {
    while (currentNode != null) {
      if (target < currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.left;
      } else if (target > currentNode.data) {
        parentNode = currentNode;
        currentNode = currentNode.right;
      } else {
        if (currentNode.left == null && currentNode.right == null) {
          if (parentNode == null) {
            root = null;
            return;
          } else if (parentNode.left == currentNode) {
            parentNode.left = null;
            return;
          } else if (parentNode.right == currentNode) {
            parentNode.right = null;
            return;
          }
        } else if (currentNode.right == null) {
          currentNode.data = findSmallest(currentNode.left);
          removerHelper(currentNode.data, currentNode, currentNode.left);
        } else if (currentNode.left == null) {
          currentNode.data = findLargest(currentNode.right);
          removerHelper(currentNode.data, currentNode, currentNode.right);
        }
      }
    }
    return;
  }

  int findSmallest(Node? currentNode) {
    if (currentNode?.left == null) {
      return currentNode!.data;
    } else {
      return findSmallest(currentNode!.left);
    }
  }

  int findLargest(Node? currentNode) {
    if (currentNode?.right == null) {
      return currentNode!.data;
    } else {
      return findLargest(currentNode!.right);
    }
  }

  void inOrder(Node? temp) {
    if (temp != null) {
      inOrder(temp.left);
      stdout.write('${temp.data} -> ');
      inOrder(temp.right);
    }
  }
}

void main() {
  Bst newTree = Bst();
  newTree.insert(1);
  newTree.insert(100);
  newTree.insert(23);
  newTree.insert(45);
  newTree.insert(12);
  newTree.insert(76);
  newTree.insert(24);
  newTree.insert(34);
  newTree.insert(120);
  newTree.insert(90);
  newTree.insert(87);
  newTree.insert(35);
  newTree.remover(12);
  newTree.remover(24);
  newTree.inOrder(newTree.root);
}
