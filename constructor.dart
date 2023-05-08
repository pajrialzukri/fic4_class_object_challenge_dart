import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa({nama, jurusan, angkatan}) {
    this.nama = 'Pajri';
    this.jurusan = 'Teknik Informatika';
    this.angkatan = 2017;
  }

  Mahasiswa.fromJsonString(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    nama = json['nama'];
    jurusan = json['jurusan'];
    angkatan = json['angkatan'];
  }
}

void main() {
  Mahasiswa mahasiswa1 = Mahasiswa();
  print('Mahasiswa 1 : ${mahasiswa1.nama}');
  print('Mahasiswa 1 : ${mahasiswa1.jurusan}');
  print('Mahasiswa 1 : ${mahasiswa1.angkatan}');

  Mahasiswa mahasiswa2 = Mahasiswa.fromJsonString(
      '{"nama": "Pajri Al Zukri", "jurusan": "Sistem Informatika", "angkatan": 2021}');
  print('Mahasiswa 2 : ${mahasiswa2.nama}'); // 'Pajri Al Zukri
  print('Mahasiswa 2 : ${mahasiswa2.jurusan}'); // 'Sistem Informatika
  print('Mahasiswa 2 : ${mahasiswa2.angkatan}'); // 2021
}
