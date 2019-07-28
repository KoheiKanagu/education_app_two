import 'package:education_app_two/components/my_alert_dialog.dart';
import 'package:education_app_two/widgets/detail_action_buttons.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.share),
              onPressed: () => MyAlertDialog.show(context, "Share"))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network("https://picsum.photos/500/400"),
            )),
            Container(
              padding: EdgeInsets.symmetric(vertical: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  DetailActionButtons(
                    num: 113,
                    text: "Enrolment",
                    color: Colors.blue,
                  ),
                  DetailActionButtons(
                    num: 287,
                    text: "Surplus",
                    color: Colors.red,
                  ),
                  DetailActionButtons(
                    num: 18,
                    text: "Hosting",
                    color: Colors.yellow,
                  ),
                ],
              ),
            ),
            Text(
              "Three mode events have been cancelled List of the latest national competitions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 18),
              child: Text(
                "Recently, the General Office of the Ministry of Education issues the Notice on Publishing the National Competition Activities for Primary and Secondary School.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
            FloatingActionButton(
              heroTag: "thumb_up",
              onPressed: null,
              child: Icon(Icons.thumb_up),
              backgroundColor: Colors.red,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: ButtonTheme(
                height: 48,
                child: RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Apply",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
