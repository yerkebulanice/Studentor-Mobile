import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE6EAF4),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.0),
        child: Column(
          children: [
            SizedBox(height: 56.0),
            topInformation(),
            SizedBox(height: 10.0),
            buildRowInfo(
              'Astana IT University',
              Icons.location_city_outlined,
            ),
            buildRowInfo(
              'Informatics (Computer Science)',
              Icons.school_outlined,
            ),
            buildRowInfo(
              'In September 2019',
              Icons.event_available_outlined,
            ),
            SizedBox(height: 10.0),
            countOfCoins(),
            SizedBox(height: 12.0),
            switchToMentor(),
            SizedBox(height: 14.0),
            giftFromFriends(),
            SizedBox(height: 14.0),
            signOut(),
          ],
        ),
      ),
    );
  }

  GestureDetector signOut() {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xffE6EAF4),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              blurRadius: 2,
              offset: Offset(0.5, 0.5), // Shadow position
            ),
          ],
        ),
        padding: EdgeInsets.fromLTRB(10.0, 4, 10, 10),
        child: Center(
          child: Text(
            'Выйти',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );
  }

  Container giftFromFriends() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffE6EAF4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            blurRadius: 2,
            offset: Offset(0.5, 0.5), // Shadow position
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(10.0, 4, 10, 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/gift.png',
                width: 72.0,
                fit: BoxFit.fill,
              ),
              Expanded(
                child: Text(
                  'Пригласи друга и получи студкоина бесплатно',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Color(0xff004DFF).withOpacity(0.25),
            ),
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Пригласить друзей',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container switchToMentor() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffE6EAF4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            blurRadius: 2,
            offset: Offset(0.5, 0.5), // Shadow position
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(10.0, 4, 20, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Стать ментором',
            style: TextStyle(fontSize: 20.0),
          ),
          Switch(
            value: _switchValue,
            onChanged: (value) {
              setState(() {
                _switchValue = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Container countOfCoins() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Color(0xffE6EAF4),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            blurRadius: 2,
            offset: Offset(0.5, 0.5), // Shadow position
          ),
        ],
      ),
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
              children: <TextSpan>[
                TextSpan(text: 'У вас есть '),
                TextSpan(
                  text: '12 студкоинов ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/images/studcoin.png',
            fit: BoxFit.fitHeight,
            width: 58.0,
          ),
        ],
      ),
    );
  }

  Row topInformation() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(108.0),
          child: Image.asset(
            'assets/images/avatar.png',
            fit: BoxFit.cover,
            width: 108.0,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'Еркебулан \nГазиз',
          style: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Row buildRowInfo(String title, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 32.0,
        ),
        SizedBox(width: 8.0),
        Text(
          title,
          style: TextStyle(fontSize: 18.0),
        ),
      ],
    );
  }
}
