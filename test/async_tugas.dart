void main() async {
  func1();
  await func4(100).then(
    (value) {
      print(value);
      print("Berhasil");
    },
  ).catchError((error) {
    print(error);
    print("Gagal");
  });

  func2();
  func3();
}

func1() {
  print("history 1");
}

func2() {
  print("history 2");
}

func3() {
  print("history 3");
}

Future<String> func4(int topup) {
  return Future.delayed(Duration(seconds: 3), () {
//    int topup;

    if (topup > 50.000) {
      return "Saldo Terisi";
    } else {
      throw "Belum Terisi";
    }
  });
}
