import 'package:flutter/material.dart';
import 'package:meditation_app/src/main_page.dart';
import 'package:meditation_app/src/profile_page.dart';
import 'package:meditation_app/src/sounds_page.dart';
import 'package:meditation_app/utils/constants.dart';

class BotttomNavigationBar extends StatefulWidget {
  const BotttomNavigationBar({super.key});

  @override
  State<BotttomNavigationBar> createState() => _BotttomNavigationBarState();
}

class _BotttomNavigationBarState extends State<BotttomNavigationBar> {
  int _currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: kBackgroundColor,
        selectedItemColor: kWhite,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: navigationTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.spa_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              centerTitle: true,
              backgroundColor: const Color(0xFF2A3D3A),
              leading: SizedBox(
                height: 20,
                width: 20,
                child: Image.asset(
                  'assets/images/MenuB.png',
                  color: Colors.white,
                  fit: BoxFit.cover,
                ),
              ),
              title: SizedBox(
                height: 40,
                width: 40,
                child: Image.asset(
                  'assets/images/lotus.png',
                  color: Colors.white,
                  fit: BoxFit.cover,
                ),
              ),
              actions: [
                ClipOval(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(kProfilePic),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: onChanged,
                children: const [
                  MainPage(),
                  SoundsPage(),
                  ProfilePage(),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kBackgroundColor,
    );
  }
}
