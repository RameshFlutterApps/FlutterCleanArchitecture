import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:folderstructure/screen/home/page_home.dart';
import 'package:folderstructure/screen/profile/page_profile.dart';

import 'core/theme/theme.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool state = false;

  // This method will be used to receive data from SecondClass
  void receiveData(bool value) {
    setState(() {
      state = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: state ? ThemeMode.dark : ThemeMode.light,
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: PageProfile(onStateChanged : receiveData),
    );
  }
}
