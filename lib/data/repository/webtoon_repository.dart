import 'package:flutter_blog/_core/constants/http.dart';
import 'package:flutter_blog/data/dto/response_dto.dart';
import 'package:flutter_blog/data/dto/webtoon_reponse.dart';
import 'package:flutter_blog/data/dto/webtoon_request.dart';
import 'package:flutter_blog/data/model/detail.dart';
import 'package:flutter_blog/data/model/webtoon.dart';

class WebtoonRepository {
  Future<ResponseDTO> fetchWebtoonList(WebtoonReqDTO webtoonReqDTO) async {
    try {
      final response = await dio.get("/webtoons", data: webtoonReqDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<Webtoon>;
      List<WebtoonResDTO> webtoonList =
          mapList.map((e) => WebtoonResDTO.fromJson(e)).toList();
      responseDTO.data = webtoonList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(-1, "통신 실패", null);
    }
  }

  Future<ResponseDTO> fetchWebtoonDetailList(
      WebtoonDetailReqDTO webtoonDetailReqDTO) async {
    try {
      final response =
          await dio.get("/Detail", data: webtoonDetailReqDTO.toJson());
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      List<dynamic> mapList = responseDTO.data as List<Detail>;
      List<WebtoonDetailResDTO> detailList =
          mapList.map((e) => WebtoonDetailResDTO.fromJson(e)).toList();
      responseDTO.data = detailList;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(-1, "통신 실패", null);
    }
  }
}
