//Package Imports
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

//Component Imports
import '../Components/appbar.dart';

//Pages Imports
import './home.dart';
import './settings.dart';
import './status.dart';

const kPrimary = Color.fromRGBO(57, 57, 57, 1);
const kSecondary = Color.fromRGBO(70, 70, 70, 1);
const lesslight = Color.fromRGBO(230, 230, 234, 1);
const kTextColor = Color.fromRGBO(244, 244, 248, 1);
const double kDefaultPadding = 20.0;

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;
  ThemeNotifier(this._themeData);
  getTheme() => _themeData;
  setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_statements
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: "Cranberry",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: kPrimary,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: MyScaffold(),
    );
  }
}

class MyScaffold extends StatefulWidget {
  MyScaffoldy createState() => MyScaffoldy();
}

class MyScaffoldy extends State<MyScaffold> {
  //Navigation for bottomNavigationBar
  int _currentIndex = 0;

  //homes for navigation bar

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var child2 = null;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: CrackerAppBar(kPrimary),
      backgroundColor: kSecondary,
      body: NotificationListener<OverscrollIndicatorNotification>(
        // ignore: missing_return
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
        },
        child: SingleChildScrollView(child: MainBody(_currentIndex)),
      ),
      bottomNavigationBar: Container(
        height: 57,
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: kPrimary,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimary.withOpacity(0.38),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.warning),
              color: _currentIndex == 1 ? kTextColor : Colors.grey[500],
              onPressed: () {
                onTabTapped(1);
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: _currentIndex == 2 ? kTextColor : Colors.grey[500],
              onPressed: () {
                onTabTapped(2);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onTabTapped(0);
        },
        child: Icon(
          Icons.home,
          color: kPrimary,
        ),
        backgroundColor: _currentIndex == 0 ? kTextColor : Colors.grey[500],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class MainBody extends StatelessWidget {
  int page;

  MainBody(this.page);

  String currentPage = "Home";

  final List<Widget> _children = [
    MainFeed(),
    StatusPage(),
    SettingsPage(kPrimary, kSecondary, kTextColor)
  ];

  final List<String> _pageNames = [
    "I want to...",
    "COVID-19 Status",
    "Settings"
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * .1,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: kDefaultPadding),
                height: size.height * .15 - 20,
                color: kPrimary,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        _pageNames[page],
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontFamily: 'Rubik'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(child: _children[page]),
      ],
    );
  }
}
