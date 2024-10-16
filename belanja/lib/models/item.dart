class Item {
  final String name;
  final int price;
  final String imageUrl;
  final int stock;
  final double rating;

  Item({
    required this.name, 
    required this.price, 
    required this.imageUrl,
    required this.stock,
    required this.rating,});

  @override
  String toString() {
    return 'Item(name: $name, price: $price, stock: $stock, rating: $rating)';
  }
}
