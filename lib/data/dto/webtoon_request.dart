// 웹툰 홈화면용 DTO
class WebtoonReqDTO {
  //reqDTO말고 resDTO에 인덱스(webtoonId) 있어야하니까 뺐습니다
  final String day;

  WebtoonReqDTO({this.day = "금"});
  Map<String, dynamic> toJson() => {"day": day};

// Map 통신 코드
}

// 웹툰 상세보기용 DTO
class WebtoonDetailReqDTO {
  final String day;
  final String webtoonName;

  WebtoonDetailReqDTO({this.day = "금", required this.webtoonName});
  Map<String, dynamic> toJson() => {"day": day, "webtoonName": webtoonName};
}
//   Map<String, dynamic> toJson() =>
//       {"username": username, "password": password, "email": email};
// }

// class LoginReqDTO {
//   final String username;
//   final String password;
//
//   LoginReqDTO({required this.username, required this.password});
//
//   Map<String, dynamic> toJson() => {"username": username, "password": password};
