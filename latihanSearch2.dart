int binarySearch(List<int> arr, int kiri, int kanan, int x) {
  int perbandingan = 0; 
  while (kanan - kiri  > 1) {
    int mid = (kiri + kanan) ~/ 2;
    perbandingan++;
    if (arr[mid] < x) {
      kiri = mid + 1;
    } else {
      kanan = mid;
    }
  }
  perbandingan++; 
  if (arr[kiri] == x) {
    print("Elemen ditemukan pada index ke: $kiri");
  } else if (arr[kanan] == x) {
    print("Elemen ditemukan pada index ke: $kanan");
  } else {
    print("Elemen tidak ditemukan pada index manapun");
  }
  print("Jumlah perbandingan: $perbandingan"); 
  return perbandingan; 
}
void main() {
  List<int> arr = [2, 3, 4, 10, 40];
  int x = 4;
  int size = arr.length;
  binarySearch(arr, 0, size - 1, x);
}