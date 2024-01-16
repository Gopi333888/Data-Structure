List<int> insertingSort(List<int> array) {
  for (int i = 1; i < array.length; i++) {
    int current = array[i];
    int j = i - 1;
    while (j >= 0 && array[j] >= current) {
      array[j + 1] = array[j];
      j--;
    }
    array[j + 1] = current;
  }
  return array;
}

void main() {
  List<int> array = [100, 20, 3, 43, 5, 69, 7, 23, 9];
  List<int> result = insertingSort(array);
  print(result);
}
