import 'package:flutter/material.dart';
import 'package:getwidget/colors/gf_color.dart';
import 'package:getwidget/components/rating/gf_rating.dart';
import 'package:getwidget/size/gf_size.dart';

class MentorPage extends StatefulWidget {
  const MentorPage({Key? key}) : super(key: key);

  @override
  State<MentorPage> createState() => _MentorPageState();
}

class _MentorPageState extends State<MentorPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void showInSnackBar(String value) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(value)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0xffEAEFFB),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset('assets/images/mentor.png'),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Найти Ментора",
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                _buildMentorCard(),
                _buildMentorCard(),
                _buildMentorCard(),
                _buildMentorCard(),
                _buildMentorCard(),
                _buildMentorCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMentorCard() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: CircleAvatar(
                      radius: 25.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/mentor_image.png',
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Column(
                      children: [
                        Text(
                          'Аслан Айтмаганбетов',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                            'Университет: Гарвард Университет \nДисциплина: Язык программирование С++'),
                        GFRating(
                          color: GFColors.WARNING,
                          borderColor: GFColors.WARNING,
                          filledIcon: Icon(
                            Icons.check,
                            color: GFColors.SUCCESS,
                          ),
                          size: GFSize.SMALL,
                          value: 3,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '234\nстудента\nполучили помощь',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '423\n студента\nполучили помощь',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  showInSnackBar('Вы успешно выбрали ментора!');
                },
                child: Center(child: Text('Выбрать как ментора')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
