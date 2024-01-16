class Search {
  int binarySearch(List<int> array, int target) {
    int startindex = 0;
    int endindex = array.length - 1;
    while (startindex <= endindex) {
      int middle = startindex + ((endindex - startindex) / 2).toInt();
      if (array[middle] == target) {
        return middle;
      } else if (array[middle] > target) {
        endindex = middle - 1;
      } else if (array[middle] < target) {
        startindex = middle + 1;
      }
    }
    return -1;
  }
}

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  Search newsearch = new Search();
  final result = newsearch.binarySearch(array, 8);
  print(result);
}
