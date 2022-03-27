import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({Key? key}) : super(key: key);

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _answerController = TextEditingController();
  bool _isLoading = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then((value) {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(value)));
  }

  Future<dynamic> showAboutSuccess(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
        contentPadding: EdgeInsets.all(16.0),
        backgroundColor: Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(
                  Icons.border_color_outlined,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'Ваш ответ к Marara09',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            TextFormField(
              controller: _answerController,
              maxLines: 5,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10.0),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffB4D2EE)),
                ),
                hintText: 'Ответ',
                hintStyle: TextStyle(color: Colors.grey),
              ),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 14.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      if (_answerController.text != "") {
                        setState(() {
                          _isLoading = true;
                        });
                        Future.delayed(Duration(seconds: 2)).then((value) {
                          Navigator.pop(context);
                          setState(() {
                            _isLoading = false;
                          });
                        });
                      } else {
                        showInSnackBar('Прошу, заполните все данные!');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xff355BE2),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Ответить',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 6.0,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Color(0xff859AE7),
                      ),
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Закрыть',
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffE6EAF4),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 34.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 38.0,
                  ),
                  Text(
                    'Привет, Сэм',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                      fontSize: 36.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Text(
                    'Есть вопросы на сегодня? \nНайди все свои ответы',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    height: 32.0,
                  ),
                  buildRowCategory(
                    buildCategoryQuestions(
                      'Недавние вопросы',
                      Color(0xff1988EF),
                    ),
                    buildCategoryQuestions(
                      'Популярные вопросы месяца',
                      Color(0xffF8B50A),
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  buildRowCategory(
                    buildCategoryQuestions(
                      'Актуальные вопросы',
                      Color(0xff1EC561),
                    ),
                    buildCategoryQuestions(
                      'Мои вопросы',
                      Color(0xffDC6EE6),
                    ),
                  ),
                  questionsList(),
                  SizedBox(
                    height: 24.0,
                  ),
                ],
              ),
            ),
    );
  }

  ListView questionsList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return questionCard();
      },
    );
  }

  Column questionCard() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              whoAskedQuestion(),
              SizedBox(height: 6.0),
              questionText(),
              SizedBox(height: 8.0),
              answerText(),
              SizedBox(height: 12.0),
              countOfAnsersAndLikes(),
              SizedBox(height: 4.0),
              answerToQuestionButton(),
            ],
          ),
        ),
        SizedBox(
          height: 16.0,
        ),
      ],
    );
  }

  Widget answerToQuestionButton() {
    return InkWell(
      onTap: () {
        showAboutSuccess(context);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Color(0xff385AD4),
        ),
        // width: 72.0,
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            'Ответить',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12.0,
            ),
          ),
        ),
      ),
    );
  }

  Row countOfAnsersAndLikes() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [countOfAnswers(), countOfLikes()],
    );
  }

  Row countOfLikes() {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.thumb_up_alt_outlined,
              color: Colors.green,
              size: 20.0,
            ),
            Text(
              '233',
              style: TextStyle(fontSize: 10.0),
            ),
          ],
        ),
        SizedBox(
          width: 8.0,
        ),
        Column(
          children: [
            Icon(
              Icons.thumb_down_outlined,
              color: Colors.red,
              size: 20.0,
            ),
            Text(
              '9',
              style: TextStyle(fontSize: 10.0),
            ),
          ],
        ),
      ],
    );
  }

  Row countOfAnswers() {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.expand_less_outlined,
              size: 18.0,
            ),
            Text(
              '12',
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            Icon(
              Icons.expand_more_outlined,
              size: 18.0,
            ),
          ],
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'Остальные 12 ответов',
          style: TextStyle(
            color: Color(0xff160C90),
            decoration: TextDecoration.underline,
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }

  Row answerText() {
    return Row(
      children: [
        Icon(
          Icons.task_alt_outlined,
          color: Colors.green,
        ),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'JWT Spring для шифрование пароля',
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }

  Text questionText() {
    return Text(
      'Для чего надо использовать JWT?',
      style: TextStyle(
        fontSize: 12.0,
      ),
    );
  }

  Row whoAskedQuestion() {
    return Row(
      children: [
        Icon(Icons.person),
        SizedBox(
          width: 8.0,
        ),
        Text(
          'Marara09',
          style: TextStyle(fontSize: 14.0),
        )
      ],
    );
  }

  Row buildRowCategory(Widget widget1, Widget widget2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget1,
        SizedBox(
          width: 14.0,
        ),
        widget2,
      ],
    );
  }

  Widget buildCategoryQuestions(String text, Color color) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        height: 54.0,
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
