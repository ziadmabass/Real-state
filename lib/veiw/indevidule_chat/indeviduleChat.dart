import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:the_real_state/core/app_colors.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:the_real_state/veiw/audio_call/audioCall.dart';
import 'package:the_real_state/veiw/video_call/videoCall.dart';

class Indevidulechat extends StatefulWidget {
  Indevidulechat({super.key, required this.name, required this.image});
  String name;
  String image;
  @override
  State<Indevidulechat> createState() =>
      _IndevidulechatState(name: name, image: image);
}

class _IndevidulechatState extends State<Indevidulechat> {
  _IndevidulechatState({required this.name, required this.image});
  String name;
  String image;
  final List<types.Message> messages = [];
  final types.User user = types.User(
    id: '1',
  );
  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: '${DateTime.now().millisecondsSinceEpoch}',
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.secandary,
        appBar: AppBar(
          backgroundColor: AppColors.secandary,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
            color: AppColors.primary,
          ),
          title: ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(image),
            ),
            title: Text(
              name,
              style: TextStyle(color: Colors.white),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Audiocall(image:image ,name: name,),));
              },
              icon: Icon(Icons.call),
              color: AppColors.primary,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Videocall(image:image ,name: name,),));

              },
              icon: Icon(Icons.video_call),
              color: AppColors.primary,
            ),
          ],
        ),
        body: Container(
          child: Chat(
            
              messages: messages, onSendPressed: _handleSendPressed, user: user),
        ));
  }
}
