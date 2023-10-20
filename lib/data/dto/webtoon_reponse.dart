class WebtoonResDTO {
  final int webtoonId;
  final String image;
  final String title;
  final String author;
  final double starcount;
  WebtoonResDTO(
      this.webtoonId, this.image, this.title, this.author, this.starcount);

  WebtoonResDTO.fromJson(Map<String, dynamic> json)
      : webtoonId = json["webtoonId"],
        image = json["image"],
        title = json["title"],
        author = json["author"],
        starcount = json["starcount"];
}

// 웹툰 상세보기 응답 DTO
class WebtoonDetailResDTO {
  final int detailId;
  final String image;
  final String title;
  final int likeCount;
  final String author;
  final String weekDay;
  final String description;
  final String thumbnailImage;
  final String detailTitle;
  final int epNum;
  final DateTime createdAt;
  final double starCount;

  WebtoonDetailResDTO(
    this.detailId,
    this.image,
    this.title,
    this.likeCount,
    this.author,
    this.weekDay,
    this.description,
    this.thumbnailImage,
    this.detailTitle,
    this.epNum,
    this.createdAt,
    this.starCount,
  );

  WebtoonDetailResDTO.fromJson(Map<String, dynamic> json)
      : detailId = json["detailId"],
        image = json["image"],
        title = json["title"],
        likeCount = json["likeCount"],
        author = json["author"],
        weekDay = json["weekDay"],
        description = json["description"],
        thumbnailImage = json["thumbnailImage"],
        detailTitle = json["detailTitle"],
        epNum = json["epNum"],
        createdAt = json["createdAt"],
        starCount = json["starCount"];
}
