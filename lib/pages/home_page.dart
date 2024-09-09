import 'dart:ui';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teknofest_helen_project_/components/activity.dart';
import 'package:teknofest_helen_project_/components/tabbar_beach.dart';
import 'package:teknofest_helen_project_/components/tabbar_historical.dart';
import 'package:teknofest_helen_project_/components/tabbar_natural.dart';
import 'package:teknofest_helen_project_/components/tabbar_populercity.dart';
import 'package:teknofest_helen_project_/menubar/aboutas.dart';
import 'package:teknofest_helen_project_/models/showall_models.dart';
import 'package:teknofest_helen_project_/onboarding/size_config.dart';
import 'package:teknofest_helen_project_/pages/discover_page_ankara.dart';
import 'package:teknofest_helen_project_/pages/showall_pages.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/bottom_nav_bar.dart';
import 'discover_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    super.initState();
  }

  int selected = 0;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeHorizontal!;
    double sizeV = SizeConfig.blockSizeVertical!;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffCFB79F),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: MySearchDelegate());
            },
            icon: Icon(Icons.search),
          ),
        ],
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
      drawer: NavigationDrawer(),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: sizeV * 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Helen İle Nereye Gitmek İstiyorsunuz ?',
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                SizedBox(
                  height: sizeV * 3,
                ),
                Container(
                  child: TabBar(
                      labelPadding: const EdgeInsets.only(left: 20, right: 20),
                      labelColor: Colors.white,
                      controller: _tabController,
                      unselectedLabelColor: Colors.grey,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: (value) {
                        setState(() {
                          selected = value;
                        });
                      },
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Container(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            color: selected == 0 ? Color(0xff4C7972) : null,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Tab(
                            text: "Popüler Şehirler",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            color: selected == 1 ? Color(0xff4C7972) : null,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Tab(
                            text: "Doğal",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            color: selected == 2 ? Color(0xff4C7972) : null,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Tab(
                            text: "Sahil",
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          decoration: BoxDecoration(
                            color: selected == 3 ? Color(0xff4C7972) : null,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Tab(
                            text: "Tarihsel",
                          ),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  width: double.maxFinite,
                  child:
                      TabBarView(controller: _tabController, children: <Widget>[
                    PopulerCity(),
                    Natural(),
                    Beach(),
                    Historical(),
                  ]),
                ),
                SizedBox(
                  height: sizeV * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Text(
                        'Popüler Aktiviteler',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[800],
                        ),
                      ).tr(),
                    ),
                    SizedBox(
                      height: sizeV * 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20.0,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ShowAllPages(),
                            ),
                          );
                        },
                        child: Text(
                          "Tümü",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                PopulerActivity(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

final Uri _url = Uri.parse("https://z-p15.www.instagram.com/yaztemcom/?hl=tr");
void _launchUrl() async {
  if (!await launchUrl(_url)) throw 'Could not launch $_url';
}

final Uri _url1 = Uri.parse("https://z-p15.www.instagram.com/lablasoft/?hl=tr");
void _launchUrl1() async {
  if (!await launchUrl(_url1)) throw 'Could not launch $_url1';
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Stack(
        children: [
          Container(
              padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top,
                bottom: 24,
              ),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://www.flypgs.com/blog/wp-content/uploads/2021/05/nemrut-dagi-adiyaman-1024x683.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "helen",
                      style: GoogleFonts.squarePeg(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ])),
        ],
      );

  Widget buildMenuItems(BuildContext context) => Container(
        padding: EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text(
                "Hakkımızda",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => AboutAsPage())),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text(
                "Bizi Takip Edin",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  foregroundImage: AssetImage("assets/images/yaztem.jpeg")),
              title: Text(
                "Yaztem",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              onTap: _launchUrl,
            ),
            ListTile(
              leading: CircleAvatar(
                  foregroundImage: AssetImage("assets/images/lablasoft.jpeg")),
              title: Text(
                "Labla Soft",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              onTap: _launchUrl1,
            ),
          ],
        ),
      );
}

class MySearchDelegate extends SearchDelegate {
  List<String> searchResults = [
    'Ankara',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, null);
            } else {
              query = '';
            }
          },
          icon: Icon(Icons.clear)),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return DiscoverPageAnkara();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResults.where((searchResult) {
      final result = searchResult.toLowerCase();
      final input = query.toLowerCase();

      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];

          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
            },
          );
        });
  }
}
