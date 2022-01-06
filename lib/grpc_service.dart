library sdk_iva_vts;

import 'package:grpc/grpc.dart';
import 'package:sdk_iva_vts/src/generated/iva_result.pbgrpc.dart';
import 'package:uuid/uuid.dart';

class GrpcService {
  String host;
  int port;

  GrpcService({
    required this.host,
    required this.port
  });
  getResult(String taskId) async{
    final channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = IVAResultProcessingClient(channel);
    try {
      ResponseStream<ResultResponse> response = await stub.getResult(Request()
        ..taskId = taskId
        ..group = Uuid().v1());
      response.forEach((element) {
        print('Greeter client received: ${element.toString()}');
      });
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }

  getEvent(String taskId) async{
    final channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = IVAResultProcessingClient(channel);
    try {
      ResponseStream<EventResponse> response = await stub.getEvent(Request()
        ..taskId = taskId
        ..group = Uuid().v1());
      response.forEach((element) {
        print('Greeter client received: ${element.toString()}');
      });
    } catch (e) {
      print('Caught error: $e');
    }
    await channel.shutdown();
  }

}