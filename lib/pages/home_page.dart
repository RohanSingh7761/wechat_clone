import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wechat_clone/components/my_nav_bar.dart';
import 'package:wechat_clone/components/nav_bar_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //Navbar provider
    final homePageProvider = Provider.of<HomePageProvider>(context);
    int currentPageIndex = homePageProvider.currentPageIndex;

    return Scaffold(
      body: homePageProvider.homePageBody[currentPageIndex],
      bottomNavigationBar: const MyNavBar(),
    );
  }
}
