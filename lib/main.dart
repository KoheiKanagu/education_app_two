import 'package:flutter/material.dart';

import 'screen/activity_screen.dart';
import 'screen/details_screen.dart';
import 'screen/my_screen.dart';
import 'screen/news_screen.dart';
import 'screen/school_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(elevation: 0),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(),
        "details": (context) => DetailsScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int currentIndex = 1;
  PageController pageController;

  @override
  void initState() {
    super.initState();

    this.pageController = PageController(
      initialPage: currentIndex,
    );
  }

  @override
  void dispose() {
    super.dispose();
    this.pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            this.currentIndex = index;
          });
        },
        children: <Widget>[
          SchoolScreen(),
          ActivityScreen(),
          NewsScreen(),
          MyScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: const Text("School"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            title: const Text("Activity"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            title: const Text("News"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: const Text("My"),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          pageController.animateToPage(index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeIn);
        },
      ),
    );
  }
}
