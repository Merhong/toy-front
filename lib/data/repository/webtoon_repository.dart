import 'package:flutter_blog/data/model/webtoon.dart';

// View -> Provider(전역 or 뷰모델) -> Repository
class WebtoonRepository {
  // 웹툰 홈화면 리스트
  Future<void> fetchWebtoonList() async {}

  // 웹툰 상세보기 메서드
  // GET : Webtoon
  Future<Webtoon> fetchWebtoon(int id) async {
    print('Task started');

    // Duration 객체를 사용하여 원하는 지연 시간을 설정합니다.
    // 아래의 코드는 3초(3000 밀리초) 후에 작업을 실행합니다.
    Duration delayDuration = Duration(seconds: 3);

    await Future.delayed(delayDuration);

    // 지연 후에 실행할 작업을 이 곳에 추가합니다.
    print('Task completed after 3 seconds');
    Webtoon webtoonDTO = Webtoon(
        image:
            "https://image-comic.pstatic.net/webtoon/641253/thumbnail/thumbnail_IMAG21_01672165-03c8-44b1-ba0e-ef82c9cfcd10.jpg",
        title: "외모지상주의",
        author: "박태준",
        starCount: "9.99");

    return webtoonDTO;
  }
  Future<List<Webtoon>> findAllDetail() async {
    print('Task started');
    Duration delayDuration = Duration(seconds: 3);
    await Future.delayed(delayDuration);

    List<Webtoon> webtoons = [
      // Add your Webtoon objects here.
      Webtoon(
        image: "https://picsum.photos/id/237/300/300",
        title: "외모지상주의",
        author: "박태준",
        starCount: "9.47",
      ),
      Webtoon(
          image:
          "https://image-comic.pstatic.net/webtoon/817081/thumbnail/thumbnail_IMAG21_439e78c2-e71e-4671-ad2f-703327c0bd8d.jpeg",
          title: "오늘은나랑만나",
          author: "네이버웹툰 작가",
          starCount: "9.83"),
    ];

    return webtoons;
  }

  Future<List<Webtoon>> findAllWebtoon() async {
    print('Task started');
    Duration delayDuration = Duration(seconds: 3);
    await Future.delayed(delayDuration);

    List<Webtoon> webtoons = [
      // Add your Webtoon objects here.
      Webtoon(
        image: "https://picsum.photos/id/237/300/300",
        title: "외모지상주의",
        author: "박태준",
        starCount: "9.47",
      ),
      Webtoon(
          image:
              "https://image-comic.pstatic.net/webtoon/817081/thumbnail/thumbnail_IMAG21_439e78c2-e71e-4671-ad2f-703327c0bd8d.jpeg",
          title: "오늘은나랑만나",
          author: "네이버웹툰 작가",
          starCount: "9.83"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/773797/thumbnail/thumbnail_IMAG21_4dda13fe-417f-45b9-9696-880f2487d41d.jpg",
    //       title: "나 혼자 만렙 뉴비",
    //       author: "WAN.Z",
    //       starCount: "9.92"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/817032/thumbnail/thumbnail_IMAG21_75d7192e-5de2-46ae-bd94-749477fbabe6.jpg",
    //       title: "열렙전사 3부",
    //       author: "김세훈",
    //       starCount: "9.48"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/776601/thumbnail/thumbnail_IMAG21_7365135131254864183.jpg",
    //       title: "광마회귀",
    //       author: "JP/이히/유진성",
    //       starCount: "9.97"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/735661/thumbnail/thumbnail_IMAG21_4b3c44a0-f286-4878-bac3-84c3ec9dc0a1.jpg",
    //       title: "재혼황후",
    //       author: "히어리/숨풀/알파타",
    //       starCount: "9.96"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/772764/thumbnail/thumbnail_IMAG21_be1cd9e7-17da-449a-bc04-1294015fdbd5.jpg",
    //       title: "죽지 않으려면",
    //       author: "파래/임진국",
    //       starCount: "9.90"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/777767/thumbnail/thumbnail_IMAG21_cc85f891-272b-450a-b642-cffe1568ab71.jpg",
    //       title: "역대급 영지 설계사",
    //       author: "이현민/김현수/문백경",
    //       starCount: "9.97"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/798917/thumbnail/thumbnail_IMAG21_35c1a390-7598-418e-9902-dc9a84f22d8b.jpg",
    //       title: "언니, 이번 생엔 내가 왕비야",
    //       author: "Omin/테미스/레팔진프",
    //       starCount: "9.96"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/725586/thumbnail/thumbnail_IMAG21_17f81846-d1a9-43fd-83a4-f9e966b6b977.jpg",
    //       title: "1초",
    //       author: "시니/광운",
    //       starCount: "9.98"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/804832/thumbnail/thumbnail_IMAG21_6edbde13-770a-495c-98d8-5d1d46fcc045.jpeg",
    //       title: "커플브레이커",
    //       author: "기맹기/태건",
    //       starCount: "9.94"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/751168/thumbnail/thumbnail_IMAG21_529c6125-cf14-435f-94ed-db1a2d499d84.jpg",
    //       title: "상남자",
    //       author: "하늘소/도가도/김태궁",
    //       starCount: "9.96"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/790713/thumbnail/thumbnail_IMAG21_3919364435331003700.jpg",
    //       title: "대학원 탈출일지",
    //       author: "요다",
    //       starCount: "9.97"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/761722/thumbnail/thumbnail_IMAG21_8ad71820-0c48-418a-89e9-5c001e393f54.jpg",
    //       title: "세기말 풋사과 보습학원",
    //       author: "순끼",
    //       starCount: "9.98"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/808389/thumbnail/thumbnail_IMAG21_4a5ab33b-e6fe-4fbe-95b7-bd7fa6a9c156.jpg",
    //       title: "나혼자 탑에서 농사",
    //       author: "임형/이하경/sdcknight",
    //       starCount: "9.95"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/773916/thumbnail/thumbnail_IMAG21_7a5dbee0-0997-41f9-99b3-bb062e18fb64.jpg",
    //       title: "말년용사",
    //       author: "후당/신마니",
    //       starCount: "9.93"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/816659/thumbnail/thumbnail_IMAG21_13d24e4e-58af-4517-918c-8bd7d12de130.jpg",
    //       title: "대신 살쪄주는 여자",
    //       author: "롸나",
    //       starCount: "9.23"),
    //   Webtoon(
    //       image:
    //           "https://image-comic.pstatic.net/webtoon/804160/thumbnail/thumbnail_IMAG21_335a77d2-bbcd-4766-83f6-8d90120e9379.jpg",
    //       title: "전남편의 미친개를 길들였다",
    //       author: "철무장미/자개/재겸",
    //       starCount: "9.97"),
    ];

    print('Task completed after 3 seconds');

    return webtoons;
  }
}
