class WebtoonReqDTO {
  final String image;
  final String title;
  final String author;
  final String starCount;

  WebtoonReqDTO(
      {required this.image,
      required this.title,
      required this.author,
      required this.starCount});

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
}
