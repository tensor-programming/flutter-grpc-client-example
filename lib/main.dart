import 'package:flutter/material.dart';
import 'package:grpc_chat_example/service/chat_service.dart';
import 'package:grpc_chat_example/protos/service.pb.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose a Username"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              TextField(
                controller: controller,
              ),
              MaterialButton(
                child: Text("Submit"),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MessagePage(
                            ChatService(controller.text),
                          ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MessagePage extends StatefulWidget {
  final ChatService service;
  MessagePage(this.service);

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  TextEditingController controller;

  Set<Message> messages;

  @override
  void initState() {
    super.initState();
    messages = Set();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Page"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: controller,
              ),
            ),
            MaterialButton(
              child: Text("Submit"),
              onPressed: () {
                widget.service.sendMessage(controller.text);
                controller.clear();
              },
            ),
            Flexible(
              child: StreamBuilder<Message>(
                  stream: widget.service.recieveMessage(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    messages.add(snapshot.data);

                    return ListView(
                      children: messages
                          .map((msg) => ListTile(
                                leading: Text(msg.id.substring(0, 4)),
                                title: Text(msg.content),
                                subtitle: Text(msg.timestamp),
                              ))
                          .toList(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
