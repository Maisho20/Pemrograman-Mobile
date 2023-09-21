void main() {
  var record = ('first', a: 2, b: true, 'last');
  print(record);

  print(tukar((5, 9)));
  (String, int) mahasiswa((int, String) record) {
    var (a, b) = record;
    return (b, a);
  }

  print(mahasiswa((2141720221, 'Sabbaha Naufal Erwanda')));

  var mahasiswa2 = ('Sabbaha', a: 'Naufal', b: 'Erwanda', 2141720221);

  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
