import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LinearLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LinearLayoutState();
  }
}

class LinearLayoutState extends State<LinearLayout> {
  String lifeCycle = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Linear Layout Demo"),
      ),
      body: SingleChildScrollView(child: ColumnBhai()),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          print(index);
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("Hello1")),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("Hello2")),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("Hello3")),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("Hello3")),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm), title: Text("Hello3"))
        ],
      ),
    );
  }

  void showToast(msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white);
  }
}

class ColumnBhai extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: Text("Hello"),
        ),
        CupertinoActivityIndicator(
          radius: 30.0,
        ),
        Row(
          children: <Widget>[
            Text("Hello"),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text("Hello2"),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text("Hello3"),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text("Hello4"),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text("Hello4"),
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Text("Hello4"),
          ],
        ),
        Image.network(
          "https://boygeniusreport.files.wordpress.com/2018/05/oneplus-6-iphone-x.jpg?quality=98&strip=all&w=1024",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://boygeniusreport.files.wordpress.com/2018/05/oneplus-6-iphone-x.jpg?quality=98&strip=all&w=1024",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://boygeniusreport.files.wordpress.com/2018/05/oneplus-6-iphone-x.jpg?quality=98&strip=all&w=1024",
          fit: BoxFit.cover,
        ),
        Image.network(
          "https://boygeniusreport.files.wordpress.com/2018/05/oneplus-6-iphone-x.jpg?quality=98&strip=all&w=1024",
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
