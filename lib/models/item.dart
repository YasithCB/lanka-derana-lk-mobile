class ProductItem {
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final DateTime createdDate;

  ProductItem({
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    DateTime? createdDate,
  }) : createdDate = createdDate ?? DateTime.now();
}
