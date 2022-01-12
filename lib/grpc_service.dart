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
  Future<ResponseStream<ResultResponse>> getResult(String taskId) async{
    final channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = IVAResultProcessingClient(channel);
      ResponseStream<ResultResponse> response = await stub.getResult(Request()
        ..taskId = taskId
        ..group = Uuid().v1());
      return response;
    // await channel.shutdown();
  }

  Future<ResponseStream<EventResponse>> getEvent(String taskId) async{
    final channel = ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final stub = IVAResultProcessingClient(channel);
      ResponseStream<EventResponse> response = await stub.getEvent(Request()
        ..taskId = taskId
        ..group = Uuid().v1());
     return response;
  }

}