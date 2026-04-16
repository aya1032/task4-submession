import 'package:flutter/material.dart';
import 'chat_data.dart';
import 'chat_model.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  IconData getIcon(MessageStatus status) {
    switch (status) {
      case MessageStatus.sent:
        return Icons.done;
      case MessageStatus.delivered:
        return Icons.done_all;
      case MessageStatus.seen:
        return Icons.done_all;
    }
  }

  Color getColor(MessageStatus status) {
    switch (status) {
      case MessageStatus.sent:
        return Colors.grey;
      case MessageStatus.delivered:
        return Colors.grey;
      case MessageStatus.seen:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  final chat = chats[index];

                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(chat.image),
                    ),

                    title: Text(
                      chat.title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),

                    subtitle: Row(
                      children: [
                       
                        if (chat.isMe) ...[
                          Icon(
                            getIcon(chat.status),
                            size: 16,
                            color: getColor(chat.status),
                          ),
                          SizedBox(width: 5),
                        ],

                        Expanded(
                          child: Text(
                            chat.subtitle,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),

                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          chat.time,
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),

        
        Positioned(
          bottom: 20,
          right: 20,
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(Icons.message),
          ),
        ),
      ],
    );
  }
}
