class Kucing {
  String? nama;
  int? umur;
}

void main() {
  Kucing kucing1 = Kucing();

  kucing1.nama = "Meong";
  kucing1.umur = 3;

  print("Nama kucing: ${kucing1.nama}");
  print("Umur kucing: ${kucing1.umur} tahun");
}
