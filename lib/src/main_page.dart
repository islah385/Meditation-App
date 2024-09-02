import 'package:flutter/material.dart';
import 'package:meditation_app/utils/constants.dart';
import 'package:meditation_app/widget/youtube_video_player_wid.dart';

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
                style: kTextStyleHead
              ),
              const Text(
                'How are you feeling today ?',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white54,
                    fontFamily: 'Merriweather'),
              ),
              kHeight30,
              Row(
                children: [
                  _IconTextContainer(
                      iconL: 'assets/images/ying-yang.png', 
                      iconN: 'Calm',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YoutubeVideoPlayerWid(videoURL: 'https://youtu.be/LLeqY9ingRY?si=SJY9Tzsv6O89XJui'),));
                      },
                      ),
                  kSpacer,
                  _IconTextContainer(
                      iconL: 'assets/images/triskele.png', 
                      iconN: 'Relax',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YoutubeVideoPlayerWid(videoURL: 'https://youtu.be/krBvzDlL0mM?si=RHzbfxxdJReePUqf'),));
                      },
                      ),
                  kSpacer,
                  _IconTextContainer(
                      iconL: 'assets/images/yoga.png', 
                      iconN: 'Focus',
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YoutubeVideoPlayerWid(videoURL: 'https://youtu.be/zSkFFW--Ma0?si=Zm5Bymh_RJZMAa6I'),));
                      }
                      ),
                  kSpacer,
                  _IconTextContainer(
                      iconL: 'assets/images/spiral.png', 
                      iconN: 'Axious',
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YoutubeVideoPlayerWid(videoURL: 'https://youtu.be/fmE8bKiQfiA?si=wabNu43Dd_Kc_z4o'),));
                      }
                      ),
                ],
              ),
              kHeight30,
              _VideoLinkContainer(
                  title: 'Meditation 101',
                  description:
                      'Techniques, Benefits, and\na Beginner\'s How-To',
                  imageLocation: 'assets/images/preview 1.png',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YoutubeVideoPlayerWid(
                              videoURL:
                                  'https://youtu.be/JslvBcIVtDg?si=GpSCZf25Pg2sHtw4'),
                        ));
                  }),
              kHeight30,
              _VideoLinkContainer(
                  title: 'Cardio Meditatiion',
                  description:
                      'Basics of yoga for Beginners\nor Experienced Professionals',
                  imageLocation: 'assets/images/preview 2.png',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => YoutubeVideoPlayerWid(
                              videoURL:
                                  'https://youtu.be/eolakZ6UBEg?si=6oBNm2V5r-jWWC1B'),
                        ));
                  })
            ],
          ),
        ),
        backgroundColor: const Color(0xFF2A3D3A));
  }

  // ignore: non_constant_identifier_names
  Expanded _VideoLinkContainer(
      {required String title,
      required String description,
      required String imageLocation,
      required void Function()? onTap}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 25, left: 30, bottom: 15, right: 5),
        width: double.infinity,
        decoration: BoxDecoration(
            color: kWhite, borderRadius: BorderRadius.circular(25)),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.bold),
                ),
                kHeight5,
                Text(
                  description,
                  style: TextStyle(fontSize: 15),
                ),
                kHeight30,
                SizedBox(
                  height: 45,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: onTap,
                      style: ElevatedButton.styleFrom(
                          iconColor: kWhite,
                          backgroundColor: kBackgroundColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Row(
                        children: [
                          Text(
                            'Watch Now',
                            style: TextStyle(color: kWhite),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.play_circle)
                        ],
                      )),
                ),
              ],
            ),
            Expanded(
                child: SizedBox(
                    height: 130,
                    child: Image.asset(
                      imageLocation,
                      fit: BoxFit.cover,
                    )))
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  GestureDetector _IconTextContainer(
      {required String iconL, required String iconN, required void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(25)),
            child: Image.asset(iconL),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            iconN,
            style: const TextStyle(color: kWhite),
          )
        ],
      ),
    );
  }
}
