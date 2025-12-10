void main() {
  const kkm = 75;
  String nama = "Munawir";
  int umur = 19;
  var mataKuliah = ["Kalkulus", "Basis data", "Algoritma Pemrograman"];
  var nilaiMataKuliah = [80, 90, 70];

  final double rataRataNilai = hitungRerata(nilaiMataKuliah);
  printLaporan(nama, umur, mataKuliah, rataRataNilai, kkm);
}

String menentukanGrade(double rataRata) {
  if (rataRata < 0 || rataRata > 100) {
    return "Nilai tidak valid";
  } else if (rataRata >= 85) {
    return "A";
  } else if (rataRata >= 70) {
    return "B";
  } else if (rataRata >= 55) {
    return "C";
  } else if (rataRata >= 40) {
    return "D";
  } else {
    return "E";
  }
}

String lulusTidak(double rataRata, int kkm) {
  return rataRata >= kkm ? "Lulus" : "Tidak Lulus";
}

double hitungRerata(List<int> nilai) {
  int total = 0;
  for (var n in nilai) {
    total += n;
  }
  return total / nilai.length;
}

void printLaporan(
  String nama,
  int umur,
  List<String> mataKuliah,
  double rataRata,
  int kkm,
) {
  print("Laporan Mahasiswa");
  print("Nama: $nama");
  print("Umur: $umur");
  print("Rata-rata Nilai: ${rataRata.toStringAsFixed(2)}");
  print("Grade: ${menentukanGrade(rataRata)}");

  String keteranganLulus = lulusTidak(rataRata, kkm);
  print("Keterangan: $keteranganLulus");
  if (keteranganLulus == "Lulus" && rataRata == 100) {
    print("Predikat: Sempurna");
  } else if (keteranganLulus == "Lulus" && rataRata >= kkm) {
    print("Predikat: Memuaskan");
  } else {
    print("Predikat: Perlu Perbaikan");
  }
}
