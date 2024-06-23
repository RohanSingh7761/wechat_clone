import 'package:flutter/cupertino.dart';
import 'package:wechat_clone/pages/chat_page.dart';
import 'package:wechat_clone/pages/contacts_page.dart';
import 'package:wechat_clone/pages/explore_page.dart';
import 'package:wechat_clone/pages/profile_page.dart';

class HomePageProvider extends ChangeNotifier {
  final List<Widget> _homePageBody = [
    const ChatPageBody(),
    const ContactsPageBody(),
    const ExplorePageBody(),
    const ProfilePageBody(),
  ];

  void setPageIndex(pageIndex) {
    currentPageIndex = pageIndex;
    notifyListeners();
  }

  //Current Page index
  int _currentPageIndex = 0;

  //getters
  List<Widget> get homePageBody => _homePageBody;
  int get currentPageIndex => _currentPageIndex;

  //setters
  set currentPageIndex(int pageIndex) {
    _currentPageIndex = pageIndex;
    notifyListeners();
  }
}
