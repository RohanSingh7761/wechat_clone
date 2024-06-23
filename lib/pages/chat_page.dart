import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wechat_clone/components/my_chat_tile.dart';
import 'package:wechat_clone/models/chat_tile_model.dart';

class ChatPageBody extends StatefulWidget {
  const ChatPageBody({super.key});

  @override
  State<ChatPageBody> createState() => _ChatPageBodyState();
}

class _ChatPageBodyState extends State<ChatPageBody> {
  @override
  Widget build(BuildContext context) {
    final ChatProvider myChatProvider = ChatProvider();
    return SafeArea(
      //*Main scaffold of the page
      child: Column(
        children: [
          //*App Bar
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "WeChat",
                  style: TextStyle(fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(CupertinoIcons.search, size: 30),
                    SizedBox(width: 10),
                    Icon(CupertinoIcons.add, size: 30),
                  ],
                )
              ],
            ),
          ),
          //*List of Chats
          Expanded(
            child: ListView.builder(
              itemCount: myChatProvider.myChats.length,
              itemBuilder: (context, index) {
                final myChatList = myChatProvider.myChats[index];

                return MyChatTile(
                  imagePath: '',
                  chatName: myChatList.chatName,
                  chatSubtitle: myChatList.chatSubtitle,
                  chatTime: myChatList.chatTime,
                  isChatOpened: myChatList.isChatOpened,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
