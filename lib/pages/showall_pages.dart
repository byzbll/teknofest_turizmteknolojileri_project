import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_helen_project_/models/showall_models.dart';
import 'package:teknofest_helen_project_/pages/%C4%B1nformation_activity_pages.dart';
import 'package:teknofest_helen_project_/pages/home_page.dart';

class ShowAllPages extends StatefulWidget {
  ShowAllPages({
    Key? key,
  }) : super(key: key);

  @override
  State<ShowAllPages> createState() => _ShowAllPagesState();
}

class _ShowAllPagesState extends State<ShowAllPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffCFB79F),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => HomePage()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
                height: 2000,
                child: ListView.builder(
                    itemCount: activityList.length,
                    itemBuilder: (context, index) {
                      ActivityInfo activity = activityList[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 15.0, bottom: 5.0),
                        child: Column(
                          children: <Widget>[
                            PlaceCard(
                              activityInfo: activityList[index],
                              press: () {},
                            ),
                          ],
                        ),
                      );
                    })),
          ),
        ]),
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final ActivityInfo activityInfo;
  final VoidCallback press;
  const PlaceCard({
    Key? key,
    required this.activityInfo,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => InformationActivityPages(
              activityInfo: activityInfo,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Material(
            elevation: 10.0,
            borderRadius: BorderRadius.circular(15),
            child: Container(
              height: 170,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(activityInfo.image),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              height: 100,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: FractionalOffset.bottomCenter,
                  end: FractionalOffset.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.8),
                    Colors.black87.withOpacity(0.7),
                    Colors.black54.withOpacity(0.6),
                    Colors.black38.withOpacity(0.1),
                  ],
                  stops: [0.2, 0.4, 0.6, 0.9],
                ),
              ),
            ),
          ),
          Positioned(
            left: 20.0,
            top: 10.0,
            child: Text(
              activityInfo.title,
              style: GoogleFonts.playfairDisplay(
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
