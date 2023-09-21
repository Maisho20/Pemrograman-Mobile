void main() {
  //langkah 1
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  //langkah 2
  //program di atas digunakan untuk menampilkan semua list yang ada

  //langkah 3
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  names1.add('Sabbaha Naufal Erwanda');
  names1.add('2141720221');

  names2.addAll(names1);
  // names2.addAll(['Sabbaha Naufal Erwanda', '2141720221']);

  print(names1);
  print(names2);
  // print(names3);
}
