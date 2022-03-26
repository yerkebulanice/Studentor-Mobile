import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:studentor_mobile/presentation/community/community_page.dart';
import 'package:studentor_mobile/presentation/main/main_page.dart';
import 'package:studentor_mobile/presentation/mentor/mentor_page.dart';
import 'package:studentor_mobile/presentation/profile/profile_page.dart';
import 'package:studentor_mobile/presentation/work/work_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    CommunityPage(),
    WorkPage(),
    MainPage(),
    MentorPage(),
    ProfilePage(),
  ];

  static const List<TabItem> _tabItems = <TabItem>[
    TabItem(icon: Icons.home, title: 'Группы'),
    TabItem(icon: Icons.work, title: 'Вакансии'),
    TabItem(icon: Icons.home, title: 'Главная'),
    TabItem(icon: Icons.supervised_user_circle_outlined, title: 'Менторы'),
    TabItem(icon: Icons.person, title: 'Профиль'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  ConvexAppBar bottomNavigationBar() {
    return ConvexAppBar(
      style: TabStyle.fixed,
      backgroundColor: Colors.white,
      color: Colors.black,
      activeColor: const Color(0xff355BE2),
      items: _tabItems,
      initialActiveIndex: 2,
      onTap: (i) {
        _onItemTapped(i);
      },
    );
  }
}
