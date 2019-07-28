import 'package:flutter/material.dart';

import 'components/category_card.dart';
import 'components/my_alert_dialog.dart';
import 'components/topic_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(elevation: 0),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Activity"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => MyAlertDialog.show(context, "onPressed"),
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(12),
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    TopicCard(),
                    TopicCard(),
                    TopicCard(),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: GridView.count(
                padding: EdgeInsets.only(top: 24, left: 12, right: 12),
                mainAxisSpacing: 28,
                crossAxisSpacing: 20,
                crossAxisCount: 2,
                children: <Widget>[
                  CategoryCard(
                    title: "Training",
                    color: Color.fromARGB(255, 15, 203, 167),
                    subText: "Three weekend trip",
                    price: 289,
                  ),
                  CategoryCard(
                    title: "Subject",
                    color: Color.fromARGB(255, 245, 99, 88),
                    subText: "One semester",
                    price: 1688,
                  ),
                  CategoryCard(
                    title: "Travel",
                    color: Color.fromARGB(255, 254, 194, 62),
                    subText: "Three days and two nights",
                    price: 3568,
                  ),
                  CategoryCard(
                    title: "Other\nActivities",
                    color: Color.fromARGB(255, 11, 172, 251),
                    subText: "Research and study",
                    price: 890,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
