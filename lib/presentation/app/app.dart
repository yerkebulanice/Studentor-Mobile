import 'package:flutter/material.dart';
import 'package:studentor_mobile/presentation/community/community_page.dart';
import 'package:studentor_mobile/presentation/home/home_page.dart';
import 'package:studentor_mobile/presentation/mentor/mentor_page.dart';
import 'package:studentor_mobile/presentation/profile/profile_page.dart';
import 'package:studentor_mobile/presentation/work/work_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Studentor.kz',
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (BuildContext context) => HomePage(),
        "/profile": (BuildContext context) => ProfilePage(),
        "/mentor": (BuildContext context) => MentorPage(),
        "/work": (BuildContext context) => WorkPage(),
        "/community": (BuildContext context) => CommunityPage(),
      },
    );
  }
}
