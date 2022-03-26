import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:studentor_mobile/presentation/community/community_page.dart';
import 'package:studentor_mobile/presentation/home/home_page.dart';
import 'package:studentor_mobile/presentation/intro/intro.dart';
import 'package:studentor_mobile/presentation/login/login.dart';
import 'package:studentor_mobile/presentation/mentor/mentor_page.dart';
import 'package:studentor_mobile/presentation/profile/profile_page.dart';
import 'package:studentor_mobile/presentation/work/work_page.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studentor.kz',
      debugShowCheckedModeBanner: false,
      initialRoute: "/intro",
      routes: {
        "/intro": (BuildContext context) => IntroPage(),
        "/login":(BuildContext context) => LoginPage(),
        "/": (BuildContext context) => HomePage(),
        "/profile": (BuildContext context) => ProfilePage(),
        "/mentor": (BuildContext context) => MentorPage(),
        "/work": (BuildContext context) => WorkPage(),
        "/community": (BuildContext context) => CommunityPage(),
      },
    );
  }
}
