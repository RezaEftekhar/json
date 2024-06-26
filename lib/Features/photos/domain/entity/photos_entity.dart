class PhotosEntity {
  final int? albumId;
  final int? id;
  final String? title;
  final String? url;
  final String? thumbnailUrl;

  PhotosEntity(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});
}
