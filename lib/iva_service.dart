library sdk_iva_vts;

import 'dart:convert';

import 'package:http/http.dart';
import 'package:sdk_iva_vts/object.dart';
import 'package:sdk_iva_vts/post.dart';


class IvaService {

  String urlPath;
  IvaService({
    required this.urlPath
  });

  Future<List<Feature>> getListFeature(int offset, int limit) async {
    final queryParameters = {
      'offset': offset,
      'limit': limit
    };
    print(this.urlPath);
    final uri =
    Uri.http(this.urlPath,"/api/v1/features/", queryParameters);
    print(uri);
    var result = await _makeGetRequest(uri);
    result.forEach((Feature feature) => print(feature.id));
    return result;
  }

  Future<String> getListFeatureById(int featureId) async {
    var uri = Uri.http(this.urlPath,'/api/v1/features/${featureId}',null);
    Response response = await get(uri);
    // data sample trả về trong response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String? contentType = headers['content-type'];
    var jsonResponse = json.decode(response.body);
    print(jsonResponse);
    return jsonResponse;
  }


  Future<List<Post>> getResult(String url) async {
    var result = await _makeGetRequest(url);
    result.forEach((Post post) => print(post.id));
    return result;
  }


  Future<String> getRespone(String url) async {
    var result = await _makePostRequest(url);
    return result;
  }



  _makeGetRequest(var uri) async {
    // tạo GET request
    Response response = await get(uri);
    // data sample trả về trong response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String? contentType = headers['content-type'];
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((value) => new Feature.fromJson(value)).toList();
  }

  _makePostRequest(String url) async {
    // cài đặt tham số POST request
    Map<String, String> headers = {"Content-type": "application/json"};
    var title = "A";
    var body1 = "A";
    var userId = 1;
    var id = 0;
    Post post1 = Post(userId: userId, id: 0, title: title, body: body1);
    var json = jsonEncode(post1.toJson());

    // tạo POST request
    Response response = await post(Uri.parse(url), headers: headers, body: json);
    // kiểm tra status code của kết quả response
    int statusCode = response.statusCode;
    print(statusCode);
    // API này trả về id của item mới được add trong body
    String body = response.body;
    return body;
  }



}


