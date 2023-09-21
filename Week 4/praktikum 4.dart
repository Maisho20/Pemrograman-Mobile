void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print('Panjang list2: ${list2.length}\n');

  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...list1];
  print(list3);
  print('Panjang list2: ${list3.length}\n');

  //menambahkan nama dan NIM dengan Spread Operators
  var nim = ['2141720221'];
  var mahasiswa = ['Sabbaha Naufal Erwanda', ...nim];
  print(mahasiswa);
  print('Panjang list mahasiswa: ${mahasiswa.length}');

  var promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

  var login = 'admin';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login case 'Manager') 'Inventory'
  ];
  print(nav2);

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
