import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/home_page.dart';

class AboutAsPage extends StatefulWidget {
  AboutAsPage({Key? key}) : super(key: key);

  @override
  State<AboutAsPage> createState() => _AboutAsPageState();
}

class _AboutAsPageState extends State<AboutAsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(237, 224, 212, 100),
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        backgroundColor: Color.fromRGBO(237, 224, 212, 100),
        centerTitle: true,
        title: Text(
          "helen",
          style: GoogleFonts.squarePeg(
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          goktugkaranlik(),
          huseyinonurbural(),
          ramazanerenkarakus(),
          beyzabal(),
          huseyincandincer(),
          dondunursahin(),
          mertyildirim(),
          kaanozturk(),
          serhatBingol(),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Padding goktugkaranlik() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/a/ab/Uludag.JPG",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/goktug.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "GÖKTUĞ KARANLIK",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Takım Kaptanı",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding huseyinonurbural() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://www.aizanoi.com/images/slider/buyuk/rs140289.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/onur.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "HUSEYİN ONUR BURAL",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Flutter Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding ramazanerenkarakus() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://www.ankaramasasi.com/haberler/2021/10/20/ankarada-muhtesem-manzara-galeri-0.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/eren.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "EREN KARAKUŞ",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Flutter Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding beyzabal() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://www.cizgirentacar.com/upcache/blogpost/1605006288-a.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/beyza.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "BEYZA BAL",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Flutter Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding huseyincandincer() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://cdn.britannica.com/68/198168-050-16D23B84/Cove-port-coast-Black-Sea-Turkey-Amasra.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/huseyin.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "HÜSEYİN CAN DİNCER",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Flutter Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding dondunursahin() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://i20.haber7.net/resize/1280x720//haber/haber7/photos/2020/16/turkiyenin_buyuk_sehirlerinin_muazzam_manzaralari_1586779981_2225.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/nur.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "NUR ŞAHİN",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Flutter Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding mertyildirim() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Color(0xff4C7972),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://www.momondo.com.tr/discover/wp-content/uploads/sites/294/2019/02/88de2c7e-a0bf-3285-9da2-04742d0fa137.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/mert.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "MERT YILDIRIM",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Web Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding kaanozturk() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Color(0xff4C7972),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://cdn2.enuygun.com/media/lib/825x620/uploads/image/kelebekler-vadisi-36567.webp",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/kaan.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "KAAN ÖZTÜRK",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Flutter Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
   Padding serhatBingol() {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/a/ab/Uludag.JPG",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/images/serhat.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "SERHAT BİNGÖL",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Center(
              child: Text(
                "Flutter Developer",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
