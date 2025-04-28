// int sequentialSearch(List<int> arr, int x) {
//   int N = arr.length;
//   for (int i = 0; i < N; i++) {
//     if (arr[i] == x) return i;
//   }
//   return -1;
// }
// void main() {
//   List<int> arr = [2, 3, 4, 10, 40];
//   int x = 10;
//   int result = sequentialSearch(arr, x);
//   if (result == -1) {
//     print("Elemen tidak ada dalam array");
//   } else {
//     print("Elemen ditemukan pada indeks ke: $result");
//   }
// }


// int linearSearch(List<int> arr, int size, int key) {
//   if (size == 0) {
//   return -1;
//   } else if (arr[size - 1] == key) {
//   // Return the index of found key.
//   return size - 1;
//   } else {
//     return linearSearch(arr, size - 1, key);
//   }
// }
// void main() {
//   List<int> arr = [2, 3, 4, 10, 40];
//   int x = 4;
//   int result = linearSearch(arr, arr.length, x);
//   if (result == -1) {
//     print("Elemen tidak ada dalam array");
//   } else {
//     print("Elemen ditemukan pada indeks ke: $result");
//   }
// }


// void binarySearch(List<int> arr, int l, int r, int x) {
//   while (r - l > 1) {
//     int mid = (l + r) ~/ 2;
//     if (arr[mid] < x) {
//       l = mid + 1;
//     }else {
//       r = mid;
//     }
//   }
//   if (arr[l] == x) {
//     print("Found At Index $l");
//   } else if (arr[r] == x) {
//     print("Found At Index $r");
//   } else {
//     print("Not Found");
//   }
// }
// void main() {
//   List<int> arr = [2, 3, 4, 10, 40];
//   int x = 10;
//   int size = arr.length;
//   binarySearch(arr, 0, size - 1, x);
// }


int binarySearch(List<int> arr, int l, int r, int x) {
  if (r >= l) {
    int mid = l + (r - l) ~/ 2;
    if (arr[mid] == x) return mid;
    if (arr[mid] > x) return binarySearch(arr, l, mid - 1, x);
    return binarySearch(arr, mid + 1, r, x);
  }
  return -1;
}
void main() {
  List<int> arr = [2, 3, 4, 10, 40];
  int x = 10;
  int size = arr.length;
  int result = binarySearch(arr, 0, size - 1, x);
  if (result == -1) {
    print("Elemen tidak ada dalam array");
  } else {
    print("Elemen ditemukan pada indeks ke: $result");
  }
}