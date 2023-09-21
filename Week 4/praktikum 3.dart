void main() {
  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //menambahkan list pada mhs1
  mhs1.addAll({'nama': 'Sabbaha Naufal Erwanda', 'nim': '2141720221'});
  //menambahkan list pada mhs2
  mhs2.addAll({1: 'Sabbaha Naufal Erwanda', 2: '2141720221'});
  //menambahkan list pada gifts
  gifts.addAll(mhs1);
  //menambahkan list pada nobleGases
  nobleGases.addAll(mhs2);

  //print
  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
