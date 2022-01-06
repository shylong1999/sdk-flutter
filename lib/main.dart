library sdk_iva_vts;

import 'package:sdk_iva_vts/grpc_service.dart';
import 'package:sdk_iva_vts/iva_service.dart';


void main() async {

  final ivaService = IvaService();
  final grpcService = GrpcService(host: "AAAAAA", port: 3010);
  // grpcService.getResult("AAAAAAA");
  String url = 'https://jsonplaceholder.typicode.com/posts';

  var respone = await ivaService.getRespone(url);
  print(respone);
  // var listFeature = await ivaService.getResult(url);
  // print(listFeature);


  // runApp(MyApp());
}

