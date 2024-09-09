import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_helen_project_/models/place_model_trabzon.dart';
import 'package:teknofest_helen_project_/pages/discover_page_trabzon.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationPageTrabzon extends StatefulWidget {
  final PlaceInfoTrabzon placeInfoTrabzon;
  InformationPageTrabzon({Key? key, required this.placeInfoTrabzon})
      : super(key: key);

  @override
  State<InformationPageTrabzon> createState() => _InformationPageTrabzonState();
}

class _InformationPageTrabzonState extends State<InformationPageTrabzon> {
  final oynatici = AudioCache();

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse(widget.placeInfoTrabzon.locationUrl);
    void _launchUrl() async {
      if (!await launchUrl(_url)) throw 'Could not launch $_url';
    }

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          borderRadius: BorderRadius.circular(20),
          elevation: 15.0,
          child: Container(
            height: 65.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: RaisedButton(
                onPressed: () {
                  oynatici.play(widget.placeInfoTrabzon.voice);
                },
                textColor: Colors.white,
                color: Color(0xff4C7972),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Helen İle Dinle",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.record_voice_over_outlined),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 390,
                        width: 380,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade500,
                              offset: const Offset(
                                2.0,
                                2.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                              widget.placeInfoTrabzon.image,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      top: 15.0,
                      right: 20.0,
                      child: Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              widget.placeInfoTrabzon.isFavorite =
                                  !widget.placeInfoTrabzon.isFavorite;
                            });
                          },
                          icon: Icon(
                            Icons.favorite,
                            color: widget.placeInfoTrabzon.isFavorite
                                ? Color(0xff4C7972)
                                : Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Positioned(
                      top: 15.0,
                      left: 20.0,
                      child: Container(
                        height: 39,
                        width: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DiscoverPageTrabzon(),
                              ),
                            );
                          },
                          icon: Icon(Icons.arrow_back_sharp),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                      ),
                      child: Text(
                        "Açıklama",
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        height: 39,
                        width: 39,
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
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: _launchUrl,
                          icon: FaIcon(FontAwesomeIcons.locationArrow),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: Text(
                    widget.placeInfoTrabzon.description,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
