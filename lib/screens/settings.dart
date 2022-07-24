import 'package:flutter/material.dart';

import '../widgets/settings_tile.dart';

class Settings extends StatefulWidget {
  Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<String> titles = [
    "Fonts",
    "Language",
    "Theme Mode",
    "Change Password",
    "Notifications"
  ];

  List<IconData> iconsLabel = [
    Icons.font_download_rounded,
    Icons.language_rounded,
    Icons.brightness_1,
    Icons.notifications
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return SettingsTile(
              title: titles[index], svgSrc: iconsLabel[index], press: () {});
        });
  }
}
