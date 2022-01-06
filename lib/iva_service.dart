library sdk_iva_vts;

import 'dart:convert';

import 'package:http/http.dart';
import 'package:sdk_iva_vts/object.dart';
import 'package:sdk_iva_vts/post.dart';


class IvaService {
  /// Returns [value] plus 1.

  Future<List<Feature>> getListFeature(String url) async {
    var result = await _makeGetRequest(url);
    result.forEach((Feature feature) => print(feature.id));
    return result;
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



  _makeGetRequest(String url) async {
    // tạo GET request
    Response response = await get(Uri.parse(url));
    // data sample trả về trong response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String? contentType = headers['content-type'];
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((value) => new Post.fromJson(value)).toList();
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

    // String json = '{"title": "Hello", "body": "body text", "userId": 1}';
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


