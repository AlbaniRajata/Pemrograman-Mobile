void main(List<String> arguments) {
  // Praktikum 4
  // var list1 = [1, 2, 3];
  // var list2 = [0, ...list1];
  // print(list1);
  // print(list2);
  // print(list2.length);

  // var list1 = [1, 2, null];
  // print('list1: $list1');
  
  // var list3 = [0, ...?list1];
  // print('list3 length: ${list3.length}');

  // var nimList = ['2241760080'];

  // var combinedList = [...list3, ...nimList];

  // print('combinedList: $combinedList');
  // print('combinedList length: ${combinedList.length}');

  // var promoActive = true;
  // var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print('When promoActive is true: $nav');

  // promoActive = false;
  // nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  // print('When promoActive is false: $nav');

  var login = 'Manager';
  var nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory', // Hanya ditambahkan jika login adalah 'Manager'
    if (login == 'Admin') 'Dashboard',   // Contoh kondisi lain
  ];

  print('When login is Manager: $nav2');

  login = 'Admin';
  nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
    if (login == 'Admin') 'Dashboard',   // Ditambahkan jika login adalah 'Admin'
  ];

  print('When login is Admin: $nav2');

  login = 'User';
  nav2 = [
    'Home',
    'Furniture',
    'Plants',
    if (login == 'Manager') 'Inventory',
    if (login == 'Admin') 'Dashboard',
  ];

  print('When login is User: $nav2');

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}