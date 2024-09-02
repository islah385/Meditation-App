import 'package:flutter/material.dart';
import 'package:meditation_app/utils/constants.dart';

class SoundsPage extends StatelessWidget {
  const SoundsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
              child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                height: 225,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(
                          kImageTrees,
                        ),
                        fit: BoxFit.cover,
                        scale: 0.5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Relax Sounds',
                      style: kTextStyleHead,
                    ),
                    kHeight5,
                    Text(
                      'Sometimes the most productive\nthing you can do is relax.',
                      style: TextStyle(fontSize: 15, color: kWhite),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 45,
                      width: 150,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              iconColor: kBlack,
                              backgroundColor: kWhite,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Row(
                            children: [
                              Text(
                                'Play Now',
                                style: TextStyle(color: kBlack),
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
              ),
              kHeight30,
              _CustomListView(image: kImageFTrees, name: 'Painting Forest', listening: '59899', duration: '20'),
              _CustomListView(image: kImageMountaineer, name: 'Mountaineers', listening: '45697', duration: '15'),
              _CustomListView(image: kImageDesert, name: 'Lovely Deserts', listening: '9428', duration: '39'),
              _CustomListView(image: kImageHillSides, name: 'The Hill Sides', listening: '52599', duration: '50')
            ],
          )),
        ),
        backgroundColor: kBackgroundColor);
  }

  Padding _CustomListView(
      {required String image, required String name, required String listening, required String duration}) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: double.infinity,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: kWhite, fontSize: 20, fontFamily: kFontFamily1),
                ),
                Text(
                  '$listening Listening',
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                      fontFamily: kFontFamily1),
                )
              ],
            ),
            kSpacer,
            Text('$duration Min',
                style:
                    TextStyle(color: Colors.white54, fontFamily: kFontFamily1))
          ],
        ),
      ),
    );
  }
}
