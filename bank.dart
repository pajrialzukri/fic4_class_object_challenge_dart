class Nasabah {
  String? nama;
  String? alamat;
  int? saldo;
  int? jumlah;

  Nasabah(this.nama, this.alamat, [this.saldo = 0]);

  void simpan(int jumlah) {
    saldo = saldo! + jumlah;
  }

  void ambil(int jumlah) {
    saldo = saldo! - jumlah;
  }
}

void main() {
  Nasabah nasabah1 = Nasabah("Pajri", "Jl. Raya");
  Nasabah nasabah2 = Nasabah("Al", "Jl. Raya");

  nasabah1.simpan(50000);
  nasabah2.simpan(100000);

  print("Saldo nasabah 1: ${nasabah1.saldo}");
  print("Saldo nasabah 2: ${nasabah2.saldo}");

  nasabah1.ambil(25000);
  nasabah2.ambil(53000);

  print("Saldo nasabah 1: ${nasabah1.saldo}");
  print("Saldo nasabah 2: ${nasabah2.saldo}");

  nasabah1.simpan(11000);
  nasabah2.simpan(55000);

  print("Saldo nasabah 1: ${nasabah1.saldo}");
  print("Saldo nasabah 2: ${nasabah2.saldo}");

  nasabah1.ambil(2000);
  nasabah2.ambil(10000);

  print("Saldo nasabah 1: ${nasabah1.saldo}");
  print("Saldo nasabah 2: ${nasabah2.saldo}");
}
