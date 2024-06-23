import 'package:flutter/material.dart';

class MyChatTile extends StatelessWidget {
  final String imagePath;
  final String chatName;
  final String chatSubtitle;
  final String chatTime;
  final bool isChatOpened;

  const MyChatTile({
    super.key,
    required this.imagePath,
    required this.chatName,
    required this.chatSubtitle,
    required this.chatTime,
    required this.isChatOpened,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(Icons.image, size: 30),
        ),
        title: Text(
          chatName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        subtitle: Text(
          chatSubtitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isChatOpened ? FontWeight.normal : FontWeight.w500,
            color: isChatOpened ? Colors.black : Colors.green,
          ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(chatTime),
            isChatOpened
                ? const Badge(backgroundColor: Colors.white)
                : const Badge()
          ],
        ),
      ),
    );
  }
}
