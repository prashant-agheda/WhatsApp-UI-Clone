import 'package:flutter/material.dart';
import 'package:whatsapp_ui/helpers/chat_helper.dart';
import 'package:whatsapp_ui/models/chat_item_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        ChatItemModel chatItem = ChatHelper.getChatItemModel(index);

        return SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.account_circle, size: 64.0),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Text(
                                  chatItem.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                ),

                                Text(
                                  chatItem.messageDate,
                                  style: TextStyle(
                                    color: Colors.black45,
                                  ),
                                ),
                              ],
                            ),

                            Text(
                              chatItem.mostRecentMessage,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black45,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      itemCount: ChatHelper.itemCount,
    );
  }
}
