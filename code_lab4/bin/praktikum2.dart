void main(List<String> arguments) {
  // Praktikum 2
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add('Albani Rajata Malik');

  names2.addAll(['Albani Rajata Malik', '2241760080']);

  print('names1: $names1');
  print('names2: $names2');
}