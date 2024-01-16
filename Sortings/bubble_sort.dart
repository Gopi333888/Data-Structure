List<int> bubbleSort(List<int> array) {
  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j + 1] < array[j]) {
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return array;
}

void main() {
  List<int> array = [2, 56, 1, 284, 34];
  List<int> result = bubbleSort(array);
  print(result);
}
