// void main() {
//   //tipe data dan variable
//   //var
//   var mahasiswa = "Jejen";
//   var umur = 20;

//   print(mahasiswa + " Umur = " + umur.toString());

//   //string
//   String mahasiswaString;
//   mahasiswaString = "Aan";

//   print(mahasiswaString);

//   //int
//   int semester;
//   semester = 6;

//   print(semester);

//   //double
//   double ipk;
//   ipk = 3;

//   print(ipk);

//   //boolean
//   bool benar = true;
//   bool salah = false;
//   bool tidakbenar = !true;
//   bool tidaksalah = !false;

//   //list
//   List jurusan = [
//     "Teknik Informatika",
//     "Sistem Informasi",
//     "DKV",
//     semester.toString(),
//     ipk.toString()
//   ];

//   print(jurusan);

//   //map
//   Map<String, dynamic> kelas = {
//     "nama": "Beben",
//     "kelas": "TI 3",
//   };

//   print(kelas);
//   print(kelas['nama']);
//   print(kelas['kelas']);

//   //Operator
//   int a, b;
//   a = 9;
//   b = 7;
//   print("a = " + a.toString());
//   print("b = " + b.toString());

//   print(a + b);
//   print(a - b);
//   print(a / b);
//   print(a * b);
//   print(a > b);
//   print(a < b);
//   print(a >= b);
//   print(a <= b);

//   //conditional
//   print("Conditional");
//   var nilai;
//   nilai = 80;

//   if (nilai >= 80) {
//     print('A');
//   } else if (nilai <= 80 && nilai >= 50) {
//     print('B');
//   } else
//     (print('Tidak Lulus'));

//   print('----');
//   nilai >= 80 ? print('A') : print('Tidak A');

//   //function
//   print("Function");

//   hitungNilai();
//   hitungNilai1(75, 90);
//   var p = hitungNilai1(2, 50);
//   print(p);
//   var n = hitungNilai2(mapel1: 50, mapel2: 2);
//   print(n);
//   var o = hitungNilai3(79, 100);

//   //final keyword => imutable / tidak bisa di rubah
//   //const final
//   //const
//   //const String mahasiswa = "beben";
//   //final
//   final String mahasiswafk;

//   mahasiswafk = "beben";

//   print(mahasiswafk);

//   //null safety
//   // ? ! late
//   // ? digunakan dia boleh null
// //   String? jurusan;
// // untuk diisi nanti
//   late String jurusanns;

//   jurusanns = "Teknik Informatika";
// //   jurusan = "TI";
//   // ! memaksa untuk dijalankan /  yakin ada datanya
//   print(jurusanns.length);

// }

// //function
// hitungNilai() {
//   print("hitung nilai");
// }

// //positional argument
// hitungNilai1(mapel1, mapel2, [mapel3]) {
//   var nilaiAkhir;
//   if (mapel3 != null) {
//     nilaiAkhir = mapel1 / mapel2 + mapel3;
//   } else {
//     nilaiAkhir = mapel1 / mapel2;
//   }
//   return nilaiAkhir;
// }

// //name argument
// hitungNilai2({mapel1, mapel2}) {
//   var nilaiAkhir;
//   if (mapel2 != null) {
//     nilaiAkhir = mapel1 / mapel2;
//   } else {
//     nilaiAkhir = mapel1;
//   }
//   return nilaiAkhir;
// }

// //void
// void hitungNilai3(mapel1, mapel2) {
//   var nilaiakhir = mapel1 + mapel2;
//   print(nilaiakhir);
// }

//oop
//class

class Kacamata {
  String? frame;
  String? jenis;
  int? harga;

  //construktor
  Kacamata({this.frame, this.jenis, this.harga});

  //method
  berat(int berat) {
    print(berat.toString() + " Gram");
  }
}

//inheritance / pewarisan
class Photocromic extends Kacamata {
  int? lensa;
  int? ketebalan;

  Photocromic({String? frame, this.lensa, this.ketebalan})
      : super(frame: frame);
}

void main() {
  //instansiasi
  var k1 = Kacamata(frame: "Cat Eye", jenis: "Photocromic", harga: 165000);

  print(k1.berat(24));
  print(k1.frame);
  print(k1.jenis);
  print(k1.harga);

  var k2 = Kacamata(frame: "Wayfarer", jenis: "Anti Radiasi", harga: 200000);
  var ketebalan = k2.berat(10);
  print(ketebalan);
  print(k2.frame);
  print(k2.jenis);
  print(k2.harga);

  var s1 = Photocromic(lensa: 2, ketebalan: 3, frame: "Cat Eye");
  print("-----");
  print(s1.lensa);
  print(s1.ketebalan);
  print(s1.frame);
}
