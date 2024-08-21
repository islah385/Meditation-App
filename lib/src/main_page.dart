import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome back, Joy!',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontFamily: 'Merriweather',
                ),
              ),
              
              const Text(
                'How are you feeling today ?',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white54,
                    fontFamily: 'Merriweather'),
              ),
              const SizedBox(

                
                height: 30,
              ),
              _rowIconContainer(iconL: 'assets/images/ying-yang.png',iconN: 'Calm'),
              _rowIconContainer(iconL: 'assets/images/triskele.png', iconN: 'Relax'),
              _rowIconContainer(iconL: 'assets/images/yogo.png', iconN: 'Focus')
            ],
          ),
        ),
        backgroundColor: const Color(0xFF2A3D3A));
  }

  Row _rowIconContainer({required String iconL, required String iconN}) {
    
    
    return Row(
      children: [
        Column(
          children: [
            Container(
              
              padding: const EdgeInsets.all(10),
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: Image.asset(iconL),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              iconN,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }
}
