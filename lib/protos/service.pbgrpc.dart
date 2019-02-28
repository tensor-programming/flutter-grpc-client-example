///
//  Generated code. Do not modify.
//  source: service.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;
import 'service.pb.dart';
export 'service.pb.dart';

class BroadcastClient extends $grpc.Client {
  static final _$createStream = new $grpc.ClientMethod<Connect, Message>(
      '/proto.Broadcast/CreateStream',
      (Connect value) => value.writeToBuffer(),
      (List<int> value) => new Message.fromBuffer(value));
  static final _$broadcastMessage = new $grpc.ClientMethod<Message, Close>(
      '/proto.Broadcast/BroadcastMessage',
      (Message value) => value.writeToBuffer(),
      (List<int> value) => new Close.fromBuffer(value));

  BroadcastClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<Message> createStream(Connect request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$createStream, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<Close> broadcastMessage(Message request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$broadcastMessage, new $async.Stream.fromIterable([request]),
        options: options);
    return new $grpc.ResponseFuture(call);
  }
}

abstract class BroadcastServiceBase extends $grpc.Service {
  String get $name => 'proto.Broadcast';

  BroadcastServiceBase() {
    $addMethod(new $grpc.ServiceMethod<Connect, Message>(
        'CreateStream',
        createStream_Pre,
        false,
        true,
        (List<int> value) => new Connect.fromBuffer(value),
        (Message value) => value.writeToBuffer()));
    $addMethod(new $grpc.ServiceMethod<Message, Close>(
        'BroadcastMessage',
        broadcastMessage_Pre,
        false,
        false,
        (List<int> value) => new Message.fromBuffer(value),
        (Close value) => value.writeToBuffer()));
  }

  $async.Stream<Message> createStream_Pre(
      $grpc.ServiceCall call, $async.Future request) async* {
    yield* createStream(call, (await request) as Connect);
  }

  $async.Future<Close> broadcastMessage_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return broadcastMessage(call, await request);
  }

  $async.Stream<Message> createStream($grpc.ServiceCall call, Connect request);
  $async.Future<Close> broadcastMessage(
      $grpc.ServiceCall call, Message request);
}
