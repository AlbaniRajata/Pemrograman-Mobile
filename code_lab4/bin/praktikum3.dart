void main(List<String> arguments) {
  // Praktikum 3
//   var gifts = {
//   // Key:    Value
//   'first': 'partridge',
//   'second': 'turtledoves',
//   'fifth': 1
// };

//   var nobleGases = {
//     2: 'helium',
//     10: 'neon',
//     18: 2,
//   };

//   print(gifts);
//   print(nobleGases);

  var gifts = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  gifts['name'] = 'Albani Rajata Malik';
  gifts['nim'] = '2241760080';

  var nobleGases = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  nobleGases[0] = 'Albani Rajata Malik';
  nobleGases[1] = '2241760080';

  var mhs1 = Map<String, String>();
  mhs1['name'] = 'Albani Rajata Malik';
  mhs1['NIM'] = '2241760080';

  var mhs2 = Map<int, String>();
  mhs2[0] = 'Albani Rajata Malik';
  mhs2[1] = '2241760080';

  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}