import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentor_mobile/login/login.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image.asset('assets/images/intro_back.png'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('STUDENTOR',
                          style: TextStyle(color: Color(0xFF0B11AE), fontSize: 24)),
                      Icon(
                          Icons.menu,
                          size: 36,
                          color: Color(0xFF0B11AE),
                        ),
                      
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text(
                    'Облегчение жизни студентов',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Text(
                    'Учи. Учись. Зарабатывай',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0B11AE),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF355BE2))),
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(builder: ((context) => Login())));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          'Начать обучение',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8,),
                        Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                ),
                Image.asset('assets/images/intro.png',)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
