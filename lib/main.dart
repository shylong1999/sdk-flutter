library sdk_iva_vts;

import 'package:grpc/grpc.dart';
import 'package:sdk_iva_vts/grpc_service.dart';
import 'package:sdk_iva_vts/iva_service.dart';
import 'package:sdk_iva_vts/object.dart';
import 'package:sdk_iva_vts/src/generated/iva_result.pb.dart';


void main() async {

  //
  // final grpcService = GrpcService(host: "113.163.220.201", port: 8005);
  // var response = await grpcService.getResult("6a63c14b-9350-4c0a-8be3-7f4762c52b31");
  // response.forEach((element) {
  //   print(element.toString());
  // });

  // String url = 'http://10.61.184.31:8000/api/v1/features/?offset=0&limit=100';
  // var respone = await ivaService.getRespone(url);
  // print(respone);
  var json = {
      "forward_data": {
        "a": 3,
        "b": 2
      },
      "facial_recognition_config": {
        "save_raw_image": {
          "enable": true
        },
        "faceset_token": "_9d571f75800c4561acb61a8e2921655",
        "detection_threshold": 62,
        "recognition_threshold": 72,
        "areas": [
          {
            "area_id": "test_area_1",
            "detection_area": [
              {
                "x": 0.401,
                "y": 0.259
              },
              {
                "x": 1,
                "y": 0.259
              },
              {
                "x": 1,
                "y": 1
              },
              {
                "x": 0.156,
                "y": 1
              }
            ]
          }
        ],
        "send_images": true,
        "event": {
          "unknown": 0.5,
          "recognized": true
        },
        "send_video": {
          "enable": true,
          "video_duration": 6
        }
      }
  };


  final ivaService = IvaService(urlPath: '10.61.184.31:8000');
  // var FeatureDetails = await ivaService.createVideoConfigId(2,json);
  // FeatureDetails["id"];
  //
  // var FeatureDetails = await ivaService.updateVideoConfigId("31ad65d4-332e-4e13-a2e3-778256e89e4b",json);
  // print(FeatureDetails["id"]);
  // print(FeatureDetails["config"]["forward_data"]);
  //
  // var FeatureDetails = await ivaService.getVideoConfig("31ad65d4-332e-4e13-a2e3-778256e89e4b");
  // print(FeatureDetails);

  // var FeatureDetails = await ivaService.getVideoTasksByFeatureId(2);
  // FeatureDetails.forEach((var post) => print(post["task_id"]));
  //
  var FeatureDetails = await ivaService.getStatusVideoTask("a7b9b377-5792-4b2d-a726-ab88ebf92072");
  print(FeatureDetails["task_id"]);
}

