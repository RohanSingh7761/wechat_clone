import 'package:flutter/material.dart';

class ProfilePageOptions extends StatelessWidget {
  final Widget icon;
  final String optionName;

  const ProfilePageOptions({
    super.key,
    required this.icon,
    required this.optionName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          icon,
          Text(optionName),
        ],
      ),
    );
  }
}
