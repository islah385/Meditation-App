import 'package:flutter/material.dart';
import 'package:meditation_app/src/signin_page.dart';
import 'package:meditation_app/src/signup_page.dart';
import 'package:meditation_app/widget/customButtonWidget.dart';
import 'package:meditation_app/widget/first_button_custom.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Background.png'),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                child: Image.asset(
                  'assets/images/lotus.png',
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'WELCOME',
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Do meditation. Stay focused. \nLive a healthy life.',
                style: TextStyle(color: Colors.white, fontSize: 23),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 80,
              ),
              FirstButtonCustom(
                  bName: 'Login With Email',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SigninPage(),
                        ));
                  }),
              SizedBox(
                height: 5,
              ),
              CustomButtonWidget(
                  shwntext: 'Don\'t have an account?',
                  textbtn: 'Sign Up',
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
