void main(List<String> arguments) {
  // Praktikum 5
  // var record = ('first', a: 2, b: true, 'last');
  // print(record);

  // (int, int) tukar((int, int) record) {
  //   var (a, b) = record;
  //   return (b, a);
  // }
  
  // var myRecord = (5, 10);
  // print('Record sebelum ditukar: $myRecord');

  // var swappedRecord = tukar(myRecord);
  // print('Record setelah ditukar: $swappedRecord');

  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Albani Rajata Malik', 2241760080);
  print(mahasiswa);

  var (nama, nim) = mahasiswa;
  print('Nama: $nama, NIM: $nim');

  var mahasiswa2 = ('Albani Rajata Malik', a: 2241760080, b: true, 'last');
  print(mahasiswa2.$1); // Prints 'Albani Rajata Malik'
  print(mahasiswa2.a); // Prints 2241760080
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}