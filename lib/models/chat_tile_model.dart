class ChatTileModel {
  final String imagePath;
  final String chatName;
  final String chatSubtitle;
  final String chatTime;
  final bool isChatOpened;

  ChatTileModel({
    required this.imagePath,
    required this.chatName,
    required this.chatSubtitle,
    required this.chatTime,
    required this.isChatOpened,
  });
}

class ChatProvider {
  List<ChatTileModel> myChats = [
    ChatTileModel(
      imagePath: '',
      chatName: "Rohan Chauhan",
      chatSubtitle: "Hey how are you!",
      chatTime: "11:49",
      isChatOpened: false,
    ),
    ChatTileModel(
      imagePath: '',
      chatName: "Vibhu Gupta",
      chatSubtitle: "Totally, I do understand it",
      chatTime: "10:19",
      isChatOpened: false,
    ),
    ChatTileModel(
      imagePath: '',
      chatName: "Vibhor Bagga",
      chatSubtitle: "Let me know",
      chatTime: "17:30",
      isChatOpened: true,
    ),
    ChatTileModel(
      imagePath: '',
      chatName: "Vipul Garg",
      chatSubtitle: "Awesome!",
      chatTime: "17:15",
      isChatOpened: true,
    ),
    ChatTileModel(
      imagePath: '',
      chatName: "Tony Stark",
      chatSubtitle: "Don't tell anything to cap please🙏",
      chatTime: "15:10",
      isChatOpened: true,
    ),
    ChatTileModel(
      imagePath: '',
      chatName: "Captain America",
      chatSubtitle: "Did Tony do something to Bucky!",
      chatTime: "17:30",
      isChatOpened: true,
    ),
  ];
}
