class WebtoonResDTO {
  String? image;
  String? title;
  String? author;
  double? starcount;
  WebtoonResDTO({this.image, this.title, this.author, this.starcount});
}

// 웹툰 상세보기 응답 DTO
class WebtoonDetailResDTO {
  String? image;
  String? title;
  int? like;
  String? author;
  String? day;
  String? description;
  String? thumbnailImage;
  String? detailTitle;
  int? epNum;
  DateTime? createdAt;
  double? starCount;
  bool? isRead;

  WebtoonDetailResDTO(
      {this.image,
      this.title,
      this.like,
      this.author,
      this.day,
      this.description,
      this.thumbnailImage,
      this.detailTitle,
      this.epNum,
      this.createdAt,
      this.starCount,
      this.isRead});
}
