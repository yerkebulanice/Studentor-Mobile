import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void showInSnackBar(String value) {
    _scaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(value)));
  }

  void login() async {
    setState(() {
      isLoading = true;
    });
    if (_emailController.text != "" && _passwordController.text != "") {
      if (_emailController.text == "ygaziz" &&
          _passwordController.text == "direction") {
        Future.delayed(Duration(seconds: 2)).then((value) {
          setState(() {
            isLoading = false;
          });
          Navigator.pushNamed(context, '/');
        });
      } else {
        showInSnackBar('Неправильные данные!');
        setState(() {
          isLoading = false;
        });
        return;
      }
    } else {
      setState(() {
        isLoading = false;
      });
      showInSnackBar('Прошу, заполните все поля!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Container(
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
                          TextField(
                            controller: _emailController,
                            decoration:
                                InputDecoration(labelText: "Электронная почта"),
                          ),
                          TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(labelText: "Пароль"),
                            obscureText: true,
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
                                    shape: BoxShape.circle,
                                    color: Color(0xFF6D28FF)),
                                child: InkWell(
                                  onTap: () {
                                    login();
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
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ),
                              Text(
                                'Забыли пароль?',
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
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
