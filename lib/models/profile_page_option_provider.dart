import 'package:flutter/material.dart';

class ProfileOptions {
  final Widget icon;
  final String optionName;

  ProfileOptions({
    required this.icon,
    required this.optionName,
  });
}

class OptionProvider {
  List<ProfileOptions> myOptions = [
    //1
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/pay.png'),
      optionName: 'Pay',
    ),
    //2
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/wallet.png'),
      optionName: 'Wallet',
    ),
    //3
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/card.png'),
      optionName: 'Card',
    ),
    //4
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/shopping.png'),
      optionName: 'Shopping',
    ),
    //5
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/sports.png'),
      optionName: 'Sports',
    ),
    //6
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/games.png'),
      optionName: 'Games',
    ),
    //7
    ProfileOptions(
      icon: Image.asset(
        'assets/custom_icons/applets.png',
        height: 56,
      ),
      optionName: 'Applets',
    ),
    //8
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/search.png'),
      optionName: 'Search',
    ),
    //9
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/look.png'),
      optionName: 'Look',
    ),
    //10
    ProfileOptions(
      icon: Image.asset('assets/custom_icons/music.png'),
      optionName: 'Music',
    ),
    //11
    ProfileOptions(
      icon: Image.asset(
        'assets/custom_icons/shake.png',
        height: 56,
      ),
      optionName: 'Shake',
    ),
    //12
    ProfileOptions(
      icon: Image.asset(
        'assets/custom_icons/more.png',
        height: 56,
      ),
      optionName: 'More',
    ),
  ];
}
