import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_helen_project_/models/place_model_ankara.dart';
import 'package:teknofest_helen_project_/pages/%C4%B1nformation_page_ankara.dart';
import '../onboarding/size_config.dart';
import 'home_page.dart';

class DiscoverPageAnkara extends StatefulWidget {
  DiscoverPageAnkara({Key? key}) : super(key: key);

  @override
  State<DiscoverPageAnkara> createState() => _DiscoverPageAnkaraState();
}

class _DiscoverPageAnkaraState extends State<DiscoverPageAnkara> {
  int _currentPage = 0;
  final List<String> _imgList = [
    "assets/images/ankara.jpeg",
    "assets/images/ankara1.jpeg",
    "assets/images/ankara2.jpeg",
  ];

  final CarouselController _carouselController = CarouselController();

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 300),
      height: 8,
      width: _currentPage == index ? 21 : 8,
      decoration: BoxDecoration(
          color: _currentPage == index ? Colors.green[800] : Colors.grey,
          borderRadius: BorderRadius.circular(20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeHorizontal!;
    double sizeV = SizeConfig.blockSizeVertical!;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: sizeV * 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                    child: Text(
                     "Helen İle Birlikte Keşfet !",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                height: sizeV * 1,
                  ),
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        onPageChanged: (index, carouselReason) {
                          setState(() {
                            _currentPage = index;
                          });
                        },
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: _imgList
                          .map(
                            (item) => Container(
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Stack(
                                    children: <Widget>[
                                      Image.asset(
                                        item,
                                        fit: BoxFit.cover,
                                        width: 800.0,
                                      ),
                                      Positioned(
                                        bottom: 0.0,
                                        child: Container(
                                          height: 100,
                                          width: 800,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            gradient: LinearGradient(
                                              begin:
                                                  FractionalOffset.bottomCenter,
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
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  SizedBox(height: sizeV * 1,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 10.0),
                        child: Text(
                          "Popüler Yerler",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 23.0,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15, top: 20.0, right: 10.0),
                        child: Row(
                          children: List.generate(
                            _imgList.length,
                            (index) => dotIndicator(index),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: sizeV * 1,),
                  Container(
                    height: 260,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: placeList.length,
                        itemBuilder: (context, index) {
                          PlaceInfoAnkara place = placeList[index];
                          return Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Row(
                              children: [
                                placeCard(
                                  placeInfoAnkara: placeList[index],
                                  press: () {},
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class placeCard extends StatelessWidget {
  final PlaceInfoAnkara placeInfoAnkara;
  final VoidCallback press;

  const placeCard({
    Key? key,
    required this.placeInfoAnkara,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => InformationPageAnkara(
                    placeInfoAnkara: placeInfoAnkara,
                  ),
                ),
              );
            },
            child: Container(
              height: 250,
              width: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 185,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(placeInfoAnkara.image),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.grey[730],
                            ),
                            Text(
                              placeInfoAnkara.locaciton,
                              style: GoogleFonts.playfairDisplay(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 15.0,
                                spreadRadius: 2.0,
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {
                              placeInfoAnkara.isFavorite =
                                  !placeInfoAnkara.isFavorite;
                            },
                            icon: Icon(
                              Icons.favorite,
                              color: placeInfoAnkara.isFavorite
                                  ? Color(0xff4C7972)
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
