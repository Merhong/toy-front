class Detail {
  final String image;
  final String title;
  final double likeCount;
  final String author;
  final String day;
  final String description;
  final String thumbnailImage;
  final String epTitle;
  final String epNum;
  DateTime createdAt;
  final double starCount;

  Detail(
      this.image,
      this.title,
      this.likeCount,
      this.author,
      this.day,
      this.description,
      this.thumbnailImage,
      this.epTitle,
      this.epNum,
      this.createdAt,
      this.starCount);
}
