import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          accountName: Text("Gopal"),
          accountEmail: Text("Gopal@gmail.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset('assets/logo.png'),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: Icon(Icons.auto_graph),
          title: Text("Learn CKD"),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("Settings"),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.question_mark),
          title: Text("Help & faq\'s"),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Personal Info"),
          onTap: () => {},
        ),
        ListTile(
          leading: Icon(Icons.exit_to_app),
          title: Text("Logout"),
          onTap: () => {},
        ),
      ],
    ));
  }
}
