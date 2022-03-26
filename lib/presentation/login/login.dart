import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/login_back.PNG'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Text(
                      'Добро пожаловать',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const TextField(
                      decoration:
                          InputDecoration(labelText: "Электронная почта"),
                    ),
                    const TextField(
                      decoration: InputDecoration(labelText: "Пароль"),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Войти',
                          style: TextStyle(fontSize: 24),
                        ),
                        DecoratedBox(
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xFF6D28FF)),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(Icons.arrow_forward)),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Регистрация',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        Text(
                          'Забыли пароль?',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
