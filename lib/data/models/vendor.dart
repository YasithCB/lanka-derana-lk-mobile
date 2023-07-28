class Vendor {
  final String name;
  final int rating;
  final DateTime createdDate;

  Vendor({
    required this.name,
    required this.rating,
    DateTime? createdDate,
  }) : createdDate = createdDate ?? DateTime.now();
}
