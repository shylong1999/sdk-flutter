library sdk_iva_vts;

import 'dart:convert';
import 'dart:html';

import 'package:http/http.dart';
import 'package:sdk_iva_vts/feature_details.dart';
import 'package:sdk_iva_vts/object.dart';
import 'package:sdk_iva_vts/post.dart';


class IvaService {

  String urlPath;
  IvaService({
    required this.urlPath
  });

  Future<List<Feature>> getListFeature(dynamic offset, dynamic limit) async {
    final queryParameters = {
      'offset': offset.toString(),
      'limit': limit.toString()
    };
    final uri =
    Uri.http(this.urlPath,"/api/v1/features/", queryParameters);
    var result = await _makeGetRequest(uri);
    result.forEach((Feature feature) => print(feature.id));
    return result;
  }

  Future getListFeatureById(int featureId) async {
    var uri = Uri.http(this.urlPath,'/api/v1/features/${featureId}',null);
    Response response = await get(uri);
    // data sample trả về trong response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String? contentType = headers['content-type'];
    var jsonResponse = json.decode(response.body);

    return FeatureDetails.fromJson(jsonResponse);
  }

  Future getListFeatureByName(String featureName) async {
    final queryParameters = {
      'feature_name': featureName
    };
    var uri = Uri.http(this.urlPath,'/api/v1/features/get-by-name',queryParameters);
    Response response = await get(uri);
    // data sample trả về trong response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String? contentType = headers['content-type'];
    var jsonResponse = json.decode(response.body);

    return FeatureDetails.fromJson(jsonResponse);
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

  createVideoConfigId(int featureId, var config) async {
    // cài đặt tham số POST request
    Map<String, String> headers = {"Content-type": "application/json"};
    var body = {
      "feature_id": featureId,
      "config" : config
    };

    var uri = Uri.http(this.urlPath,'/api/v1/video-configs/create',null);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    int statusCode = response.statusCode;
    print(statusCode);
    // API này trả về id của item mới được add trong body
    String responseBody = response.body;
    return json.decode(responseBody);
  }

  updateVideoConfigId(String videoConfigId, var config) async {
    // cài đặt tham số POST request
    Map<String, String> headers = {"Content-type": "application/json"};
    var body = {
      "video_config_id": videoConfigId,
      "new_config" : config
    };

    var uri = Uri.http(this.urlPath,'/api/v1/video-configs/update',null);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    int statusCode = response.statusCode;
    print(statusCode);
    // API này trả về id của item mới được add trong body
    String responseBody = response.body;
    return json.decode(responseBody);
  }

  Future getVideoConfig(String videoConfigId) async {
    // final queryParameters = {
    //   'feature_name': featureName
    // };
    var uri = Uri.http(this.urlPath,'/api/v1/video-configs/${videoConfigId}',null);
    Response response = await get(uri);
    // data sample trả về trong response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String? contentType = headers['content-type'];
    var jsonResponse = json.decode(response.body);

    return jsonResponse;
  }


  Future getVideoTasksByFeatureId(dynamic featureId) async {
    final queryParameters = {
      'feature_id': featureId.toString()
    };
    var uri = Uri.http(this.urlPath,'/api/v1/video-tasks/',queryParameters);
    Response response = await get(uri);
    // data sample trả về trong response
    int statusCode = response.statusCode;
    Map<String, String> headers = response.headers;
    String? contentType = headers['content-type'];
    var jsonResponse = json.decode(response.body);

    return jsonResponse;
  }


  // Future startVideoTask(String sourceURL,String configId) async {
  //   // final queryParameters = {
  //   //   'feature_name': featureName
  //   // };
  //   var uri = Uri.http(this.urlPath,'/api/v1/video-configs/${videoConfigId}',null);
  //   Response response = await get(uri);
  //   // data sample trả về trong response
  //   int statusCode = response.statusCode;
  //   Map<String, String> headers = response.headers;
  //   String? contentType = headers['content-type'];
  //   var jsonResponse = json.decode(response.body);
  //
  //   return jsonResponse;
  // }

  startVideoTask(String configId, String sourceUrl) async {
    // cài đặt tham số POST request
    Map<String, String> headers = {"Content-type": "application/json"};
    var body = {
      "config_id": configId,
      "source_url" : sourceUrl
    };
    var uri = Uri.http(this.urlPath,'/api/v1/video-tasks/start',null);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    int statusCode = response.statusCode;
    print(statusCode);
    // API này trả về id của item mới được add trong body
    String responseBody = response.body;
    return json.decode(responseBody);
  }

  stopVideoTask(String taskId) async {
    // cài đặt tham số POST request
    Map<String, String> headers = {"Content-type": "application/json"};
    var body = {
      "task_id": taskId
    };
    var uri = Uri.http(this.urlPath,'/api/v1/video-tasks/stop',null);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    int statusCode = response.statusCode;
    // API này trả về id của item mới được add trong body
    String responseBody = response.body;
    return json.decode(responseBody);
  }


  getStatusVideoTask(String taskId) async {
    // cài đặt tham số POST request
    Map<String, String> headers = {"Content-type": "application/json"};
    var body = {
      "task_id": taskId
    };
    var uri = Uri.http(this.urlPath,'/api/v1/video-tasks/status',null);
    Response response = await post(uri, headers: headers, body: jsonEncode(body));
    int statusCode = response.statusCode;
    // API này trả về id của item mới được add trong body
    String responseBody = response.body;
    return json.decode(responseBody);
  }

  analyzeImage(int featureId, File image) async {
    // cài đặt tham số POST request
    Map<String, String> headers = {"Content-type": "multipart/form-data"};
    // var request = new http.MultipartRequest("POST", postUri);
    var uri = Uri.http(this.urlPath,'/api/v1/images/analyze',null);

    var request = new MultipartRequest("POST", uri);
    request.fields['feature_id'] = 'someone@somewhere.com';
    // request.files.add(image);
    // request.send().then((response) {
    //   if (response.statusCode == 200) print("Uploaded!");
    // });
    //
    //
    // int statusCode = response.statusCode;
    // // API này trả về id của item mới được add trong body
    // String responseBody = response.body;
    // return json.decode(responseBody);
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


