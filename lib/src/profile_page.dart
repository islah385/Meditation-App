import 'package:flutter/material.dart';
import 'package:meditation_app/utils/constants.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            kHeight30,
            Container(
              height: 200,
              width: 200,
              child: ClipOval(
                child: Image.asset(kProfilePic),
              ),
            ),
            kHeight30,
            Text(
              'JoY',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            kHeight5,
            Text(
              'Kerala, India',
              style: kTextStyle1,
            ),
            kHeight30,
            Container(
                height: 50,
                width: double.maxFinite,
                child: TabBar(
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.white10,
                    labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    indicatorColor: Color.fromARGB(255, 4, 162, 210),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                    controller: _tabController,
                    tabs: [Tab(text: 'STATS'), Tab(text: 'ACHIEVEMENTS')])),
            Expanded(
              child: Container(
                width: double.maxFinite,
                child: TabBarView(
                    controller: _tabController,
                    children: [Text('Your Stat'), Text('Your Achivement')]),
              ),
            )
          ],
        )),
        backgroundColor: kBackgroundColor);
  }
}
