class pegawai{
  int NIP;
  String nama;
  String alamat;
  String golongan;

  pegawai(this.NIP, this.nama, this.alamat, this.golongan);

  String toString() {
    return 'NIP: $NIP, Nama: $nama, Alamat: $alamat, Golongan: $golongan';
  }
}