import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const SizedBox(width: 8),
            IconButton(
              color: Colors.black,
              icon: const Icon(CupertinoIcons.chevron_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Profile"),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
        // centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 24),
                child: Image.asset(
                  "assets/images/avatar2.png",
                  width: 75,
                ),
              ),
              const SizedBox(width: 26),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Andrea Hirata",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 7),
                  Text(
                    "hirata@gmail.com",
                    style: TextStyle(
                      color: Color.fromRGBO(127, 127, 127, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 35),
          divider(),
          section("General"),
          settingsCell("Edit Profile"),
          divider(),
          settingsCell("Notifications"),
          divider(),
          settingsCell("Wishlist"),
          divider(),
          section("Legal"),
          settingsCell("Terms of Use"),
          divider(),
          settingsCell("Privacy Policy"),
          divider(),
          section("Personal"),
          settingsCell("Report a Bug"),
          divider(),
          settingsCell("Logout"),
          divider(),
        ],
      ),
    );
  }

  Container section(String label) {
    return Container(
      height: 58,
      padding: const EdgeInsets.only(left: 24, top: 20, bottom: 20),
      child: Text(
        label,
        style: const TextStyle(
          color: Color.fromRGBO(127, 127, 127, 1),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  CupertinoButton settingsCell(String label) {
    return CupertinoButton(
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Text(
          // "Edit Profile",
          label,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      onPressed: () {},
      alignment: Alignment.centerLeft,
    );
  }

  Divider divider() {
    return const Divider(
      color: Colors.grey,
      height: 1,
    );
  }
}
