List<int> selectedSort(List<int> array) {
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] < array[i]) {
        int temp = array[i];
        array[i] = array[j];
        array[j] = temp;
      }
    }
  }
  return array;
}

void main() {
  var array = [100, 23, 4, 565, 32, 1];
  var result = selectedSort(array);
  print(result);
}
