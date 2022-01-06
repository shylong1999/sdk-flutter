///
//  Generated code. Do not modify.
//  source: iva_result.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'iva_result.pb.dart' as $0;
export 'iva_result.pb.dart';

class IVAResultProcessingClient extends $grpc.Client {
  static final _$getResult = $grpc.ClientMethod<$0.Request, $0.ResultResponse>(
      '/iva_result.IVAResultProcessing/GetResult',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResultResponse.fromBuffer(value));
  static final _$getEvent = $grpc.ClientMethod<$0.Request, $0.EventResponse>(
      '/iva_result.IVAResultProcessing/GetEvent',
      ($0.Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EventResponse.fromBuffer(value));

  IVAResultProcessingClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ResultResponse> getResult($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getResult, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.EventResponse> getEvent($0.Request request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getEvent, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class IVAResultProcessingServiceBase extends $grpc.Service {
  $core.String get $name => 'iva_result.IVAResultProcessing';

  IVAResultProcessingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Request, $0.ResultResponse>(
        'GetResult',
        getResult_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.ResultResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Request, $0.EventResponse>(
        'GetEvent',
        getEvent_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Request.fromBuffer(value),
        ($0.EventResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ResultResponse> getResult_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async* {
    yield* getResult(call, await request);
  }

  $async.Stream<$0.EventResponse> getEvent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Request> request) async* {
    yield* getEvent(call, await request);
  }

  $async.Stream<$0.ResultResponse> getResult(
      $grpc.ServiceCall call, $0.Request request);
  $async.Stream<$0.EventResponse> getEvent(
      $grpc.ServiceCall call, $0.Request request);
}
