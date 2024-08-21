import 'package:flutter/material.dart';
import 'package:meditation_app/src/signin_page.dart';
import 'package:meditation_app/utils/constants.dart';
import 'package:meditation_app/widget/botttom_navigation_bar.dart';
import 'package:meditation_app/widget/customButtonWidget.dart';
import 'package:meditation_app/widget/first_button_custom.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
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
                  'Sign Up',
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
                  'Sign up now for free and start meditating, and explore Medic.',
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
                        hintText: 'Name',
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
                SizedBox(
                  height: 30,
                ),
                FirstButtonCustom(
                    bName: 'SIGNUP',
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BotttomNavigationBar(),
                        ),
                        (route) => false,
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                CustomButtonWidget(
                    shwntext: 'Already have an account?',
                    textbtn: 'Sign In',
                    ontap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SigninPage(),
                          ));
                    })
              ],
            ),
          ),
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
      backgroundColor: Color(0xFF2A3D3A),
    );
  }
}
