import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _likedQ = false;
  bool _likedJ = false;
  bool _likedN = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEFFB),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 24.0),
            Text(
              'Studentor - личный помощник каждого студента ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                buildTopCategories('Популярные сообщества'),
                SizedBox(width: 4),
                buildTopCategories('Популярные вакансии'),
                SizedBox(width: 4),
                buildTopCategories('Специальные предложения для студентов'),
              ],
            ),
            SizedBox(
              height: 8.0,
            ),
            buildAnnouncement(),
            SizedBox(
              height: 8.0,
            ),
            buildAnnouncementJob(),
            SizedBox(
              height: 8.0,
            ),
            buildAnnouncementNews(),
          ],
        ),
      ),
    );
  }

  Widget buildAnnouncementNews() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff355BE2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/mon.png',
                  width: 42.0,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                'МОН РК',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'МОН РК проведет IT-конкурс среди студентов колледжей и вузов',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 4.0,
          ),
          Image.asset(
            'assets/images/hackathon.png',
            fit: BoxFit.fitHeight,
          ),
          SizedBox(
            height: 4.0,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _likedN = !_likedN;
              });
            },
            child: Icon(
              _likedN
                  ? Icons.favorite_outlined
                  : Icons.favorite_border_outlined,
              color: Colors.white,
              size: 28.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildAnnouncementJob() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff355BE2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/azimut.png',
                  width: 42.0,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Срочно ищем стажеров!',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Azimut Solutions',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.forward,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 4.0,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _likedJ = !_likedJ;
              });
            },
            child: Icon(
              _likedJ
                  ? Icons.favorite_outlined
                  : Icons.favorite_border_outlined,
              color: Colors.white,
              size: 28.0,
            ),
          ),
        ],
      ),
    );
  }

  Container buildAnnouncement() {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xff355BE2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  'assets/images/avatar_marzhan.png',
                  width: 42.0,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Marzhan Nuraly',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Procrastination',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Не смогла решить одну задачу, кто может помочь?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _likedQ = !_likedQ;
              });
            },
            child: Icon(
              _likedQ
                  ? Icons.favorite_outlined
                  : Icons.favorite_border_outlined,
              color: Colors.white,
              size: 28.0,
            ),
          ),
        ],
      ),
    );
  }

  Expanded buildTopCategories(String text) {
    return Expanded(
      child: Container(
        height: 100.0,
        alignment: FractionalOffset.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0xff355BE2),
        ),
        padding: EdgeInsets.all(16.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
