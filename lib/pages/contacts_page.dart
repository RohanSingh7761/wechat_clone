import 'package:flutter/material.dart';

class ContactsPageBody extends StatefulWidget {
  const ContactsPageBody({super.key});

  @override
  State<ContactsPageBody> createState() => _ContactsPageBodyState();
}

class _ContactsPageBodyState extends State<ContactsPageBody> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Contacts Page"),
    );
  }
}
