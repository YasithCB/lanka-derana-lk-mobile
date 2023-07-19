class CategoryItem {
  final String imageUrl;
  final String title;
  final DateTime createdDate;

  CategoryItem({
    required this.imageUrl,
    required this.title,
    DateTime? createdDate,
  }) : createdDate = createdDate ?? DateTime.now();
}
