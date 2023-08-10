class AdMedia {
  final int id;
  final String sourceUrl;
  final String titleRendered;
  final int width;
  final int height;
  final String mimeType;

  AdMedia({
    required this.id,
    required this.sourceUrl,
    required this.titleRendered,
    required this.width,
    required this.height,
    required this.mimeType,
  });

  factory AdMedia.fromJson(Map<String, dynamic> json) {
    return AdMedia(
      id: json['id'],
      sourceUrl: json['guid']['rendered'],
      titleRendered: json['title']['rendered'],
      width: json['media_details']['width'],
      height: json['media_details']['height'],
      mimeType: json['mime_type'],
    );
  }
}
