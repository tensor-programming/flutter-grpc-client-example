import 'package:grpc_chat_example/protos/service.pb.dart';
import 'package:grpc_chat_example/protos/service.pbgrpc.dart';
import 'package:grpc/grpc.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class ChatService {
  User user = User();
  static BroadcastClient client;

  ChatService(String name) {
    user
      ..clearName()
      ..name = name
      ..clearId()
      ..id = sha256.convert(utf8.encode(user.name)).toString();

    client = BroadcastClient(
      ClientChannel(
        "10.0.2.2",
        port: 8080,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      ),
    );
  }

  Future<Close> sendMessage(String body) async {
    return client.broadcastMessage(
      Message()
        ..id = user.id
        ..content = body
        ..timestamp = DateTime.now().toIso8601String(),
    );
  }

  Stream<Message> recieveMessage() async* {
    Connect connect = Connect()
      ..user = user
      ..active = true;

    await for (var msg in client.createStream(connect)) {
      yield msg;
    }
  }
}
