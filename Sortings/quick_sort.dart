void quickSort(List<int> array, int first, int last) {
  if (first >= last) {
    return;
  }
  int pivotindex = first;
  int start = first + 1;
  int end = last;
  while (start <= end) {
    if (array[start] > array[pivotindex] && array[end] < array[pivotindex]) {
      int temp = array[end];
      array[end] = array[start];
      array[start] = temp;
    }
    if (array[start] <= array[pivotindex]) {
      start++;
      if (array[end] > array[pivotindex]) {
        end--;
      }
    }

    int temp = array[pivotindex];
    array[pivotindex] = array[end];
    array[end] = temp;

    quickSort(array, first, end - 1);
    quickSort(array, end + 1, last);
  }

  void main() {
    var list = [100, 23, 45, 1, 3, 56, 67];
    quickSort(list, 0, list.length - 1);
    print(list);
  }
}
