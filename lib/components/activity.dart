import 'package:flutter/material.dart';
import 'package:teknofest_helen_project_/pages/%C4%B1nformation_activity_pages.dart';

class PopulerActivity extends StatefulWidget {
  PopulerActivity({Key? key}) : super(key: key);

  @override
  State<PopulerActivity> createState() => _PopulerActivityState();
}

class _PopulerActivityState extends State<PopulerActivity> {
  List<String> images = [
    "assets/images/swim.jpeg",
    "assets/images/balloning.jpeg",
    "assets/images/hiking.jpeg",
    "assets/images/ski.jpeg",
  ];
  List<String> text = [
    "YÜZME",
    "BALON",
    "YÜRÜYÜŞ",
    "KAYAK",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 5.0),
              child: Row(
                children: <Widget>[
                  Material(
                    elevation: 7.0,
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Material(
                              elevation: 10.0,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 90,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      images[index],
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              text[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff4C7972),
                                  fontSize: 12.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
