void main() {
  //Langkah 1
  var list = [1, 2, 3];
  assert(list.length == 3); //'The length of the list should be 3'
  assert(list[1] == 2); //'The second element of the list should be 2'
  print('Jumlah item list: ${list.length}');
  print('Item list pada index ke-2: ${list[1]}');

  list[1] = 1;
  assert(list[1] == 1);
  print('Item list pada index ke-2 stelah di ubah: ${list[1]}\n\n');

  //Langkah 2
  //1. pada kode di atas, assert(list.length == 3); digunakan untuk memeriksa apakah
  //jumlah index di dalam list bernilai 3 atau tidak. Jika kondisi yang ditentukan
  //bernilai salah, maka akan muncul error.
  //2. pada kode di atas, assert(list[1] == 2); digunakan untuk memeriksa apakah
  //nilai dari index ke 2 di dalam list bernilai 2 atau tidak. Jika kondisi yang ditentukan
  //bernilai salah, maka akan muncul error.
  //3. list[1] = 1; digunakan untuk merubah nulai pada index ke 2 menjadi 1

  //langkah 3
  //membuat list dengan mempunyai index = 5 dengan default value = null
  List<String?> mahasiswa = List.filled(5, null);
  assert(mahasiswa.length == 5);
  mahasiswa[0] = 'Sabbaha Naufal Erwanda'; //menambahkan nama pada index ke 1
  mahasiswa[1] = '2141720221'; //menambahkan NIM pada index ke 2
  print(mahasiswa);
}
