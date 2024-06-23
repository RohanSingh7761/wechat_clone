import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wechat_clone/components/nav_bar_provider.dart';

// ignore: must_be_immutable
class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navbarProvider = Provider.of<HomePageProvider>(context);
    double iconSize = 30.0;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: const BoxDecoration(
        color: Color.fromARGB(18, 79, 160, 117),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => navbarProvider.setPageIndex(0),
            icon: Icon(
              CupertinoIcons.chat_bubble_2_fill,
              color: navbarProvider.currentPageIndex == 0
                  ? Colors.green
                  : Colors.black,
              size: iconSize,
            ),
          ),
          IconButton(
            onPressed: () => navbarProvider.setPageIndex(1),
            icon: Icon(
              Icons.menu_book_rounded,
              color: navbarProvider.currentPageIndex == 1
                  ? Colors.green
                  : Colors.black,
              size: iconSize,
            ),
          ),
          IconButton(
            onPressed: () => navbarProvider.setPageIndex(2),
            icon: Icon(
              Icons.camera,
              color: navbarProvider.currentPageIndex == 2
                  ? Colors.green
                  : Colors.black,
              size: iconSize,
            ),
          ),
          IconButton(
            onPressed: () => navbarProvider.setPageIndex(3),
            icon: Icon(
              CupertinoIcons.person_fill,
              color: navbarProvider.currentPageIndex == 3
                  ? Colors.green
                  : Colors.black,
              size: iconSize,
            ),
          ),
        ],
      ),
    );
  }
}
