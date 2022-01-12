library sdk_iva_vts;

import 'package:grpc/grpc.dart';
import 'package:sdk_iva_vts/grpc_service.dart';
import 'package:sdk_iva_vts/iva_service.dart';
import 'package:sdk_iva_vts/object.dart';
import 'package:sdk_iva_vts/src/generated/iva_result.pb.dart';


void main() async {


  // final grpcService = GrpcService(host: "10.61.184.31", port: 9051);
  // var response = await grpcService.getEvent("24c58bdf-4068-45d0-8ce1-ae29844b14c9");
  // response.forEach((element) {
  //   print(element.toString());
  // });

  // String url = 'http://10.61.184.31:8000/api/v1/features/?offset=0&limit=100';
  // var respone = await ivaService.getRespone(url);
  // print(respone);
  final ivaService = IvaService(urlPath: '10.61.184.31:8000');
  var listFeature = await ivaService.getListFeatureById(2);
  print(listFeature);
  // // runApp(MyApp());
}

