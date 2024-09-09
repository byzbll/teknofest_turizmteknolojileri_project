import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:teknofest_helen_project_/pages/discover_page.dart';
import 'package:teknofest_helen_project_/pages/information_page.dart';
import 'onboarding/main_content.dart';
import 'onboarding/my_text_button.dart';
import 'onboarding/onboarding_model.dart';
import 'onboarding/size_config.dart';
import 'onboarding/skip_button.dart';
import 'pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')],
        path: 'assets/translations',
        fallbackLocale: Locale('en', 'US'),
        child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale,
      debugShowCheckedModeBanner: false,
      title: 'Helen',
      home: OnBoardingScreen(),
    );
  }
}

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);
  List<OnboardingModel> _list = OnboardingModel.list;

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 10,
      width: currentPage == index ? 16 : 8,
      decoration: BoxDecoration(
          color: currentPage == index ? Color(0xff4C7972) : Colors.grey,
          borderRadius: BorderRadius.circular(20)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // initialize size config
    SizeConfig().init(context);
    double sizeH = SizeConfig.blockSizeHorizontal!;
    double sizeV = SizeConfig.blockSizeVertical!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0, top: 15.0),
            child: OnBoardNavBtn(
                name: "Geç",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: _list.length,
                itemBuilder: (context, index) => MainContent(
                  sizeV: sizeV,
                  list: _list,
                  index: index,
                ),
              ),
            ),
            SizedBox(height: sizeV * 2),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  currentPage == _list.length - 1
                      ? Expanded(
                          child: MyTextButton(
                            buttonName: "HAYDİ BAŞLA",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                            bgColor: Color(0xff4C7972),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: List.generate(
                                  _list.length,
                                  (index) => dotIndicator(index),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _pageController.nextPage(
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.easeInOut);
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff4C7972),
                                shape: CircleBorder(),
                              ),
                              child: Icon(
                                Icons.arrow_right,
                                color: Colors.white,
                              ),
                            ),
                          ],
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
