import 'package:flutter_blog/data/dto/webtoon_request.dart';
import 'package:logger/logger.dart';

// View -> Provider(전역 or 뷰모델) -> Repository
class WebtoonRepository {
  Future<void> fetchWebtoonList() async {}

  // GET : Webtoon
  Future<WebtoonReqDTO> fetchWebtoon(int id) async {
    print('Task started');

    // Duration 객체를 사용하여 원하는 지연 시간을 설정합니다.
    // 아래의 코드는 3초(3000 밀리초) 후에 작업을 실행합니다.
    Duration delayDuration = Duration(seconds: 3);

    await Future.delayed(delayDuration);

    // 지연 후에 실행할 작업을 이 곳에 추가합니다.
    print('Task completed after 3 seconds');
    WebtoonReqDTO webtoonReqDTO = WebtoonReqDTO(
        image:
            "https://image-comic.pstatic.net/webtoon/641253/thumbnail/thumbnail_IMAG21_01672165-03c8-44b1-ba0e-ef82c9cfcd10.jpg",
        title: "외모지상주의",
        author: "박태준",
        starCount: "9.99");
    Logger().d(webtoonReqDTO);

    return webtoonReqDTO;
  }
}
