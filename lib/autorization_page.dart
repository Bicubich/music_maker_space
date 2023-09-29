import 'package:flutter/material.dart';
import 'package:music_maker_space/common.dart';
import 'package:music_maker_space/home.dart';
import 'package:music_maker_space/widgets/my_button.dart';
import 'package:music_maker_space/widgets/my_text_field.dart';

class AutorizationPage extends StatelessWidget {
  AutorizationPage({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, left: 21, right: 21.0),
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.white,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Image.asset('assets/images/logo.png'),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Добро пожаловать!",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        fontFamily: font),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(
                      "Авторизация в приложении",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: font),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: MyTextField(
                      hintText: 'E-mail',
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: MyTextField(
                      hintText: 'Пароль',
                      controller: _passwordController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: MyButton(
                      text: 'Войти',
                      textColor: Colors.black,
                      fillColor: Colors.green,
                      borderColor: Colors.green,
                      icon: const Icon(Icons.arrow_right_alt_outlined,
                          color: Colors.black),
                      onTab: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      textHorizontalPading: 50.0,
                      textVerticalPading: 20.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: MyButton(
                      text: 'Регистрация',
                      textColor: Colors.white,
                      borderColor: Colors.green,
                      onTab: () {},
                      textHorizontalPading: 50.0,
                      textVerticalPading: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
