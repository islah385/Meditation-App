import 'package:flutter/material.dart';
import 'package:meditation_app/src/signup_page.dart';
import 'package:meditation_app/utils/constants.dart';
import 'package:meditation_app/widget/botttom_navigation_bar.dart';
import 'package:meditation_app/widget/customButtonWidget.dart';
import 'package:meditation_app/widget/first_button_custom.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 70,
                  width: 70,
                  child: Image.asset(
                    'assets/images/lotus.png',
                    fit: BoxFit.cover,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign In',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign in now to acces your excercises and saved music.',
                  style: kTextStyle1,
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Email Address',
                        hintStyle: TextStyle(color: Colors.white54)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: TextField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.white54)),
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(color: Colors.white54),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                FirstButtonCustom(
                    bName: 'LOGIN',
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => BotttomNavigationBar(),),
                        (route) => false,
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                CustomButtonWidget(
                    shwntext: 'Don\'t have an account?',
                    textbtn: 'Sign Up',
                    ontap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupPage()));
                    })
              ],
            ),
          ),
          kHeight5,
          Expanded(
            child: Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/Group 28.png',
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
