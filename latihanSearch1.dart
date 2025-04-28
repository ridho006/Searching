int sequentialSearch(List<int> arr, int x) {
  int perbandingan = 0; 
  int N = arr.length;
  for (int i = 0; i < N; i++) {
    perbandingan++;
    if (arr[i] == x) {
      print("Jumlah perbandingan: $perbandingan"); 
      return i;
    }
  }
  print("Jumlah perbandingan: $perbandingan"); 
  return -1;
}
void main() {
  List<int> arr = [2, 3, 4, 10, 40];
  int x = 3;
  int result = sequentialSearch(arr, x);
  if (result == -1) {
    print("Elemen tidak ada dalam array");
  } else {
    print("Elemen ditemukan pada indeks ke: $result");
  }
}