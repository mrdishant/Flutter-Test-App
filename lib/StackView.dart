import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/LinearLayout.dart';
import 'package:fluttertoast/fluttertoast.dart';

class StackView extends StatefulWidget {
  String title;

  StackView(this.title);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StackViewState(title);
  }
}

class StackViewState extends State<StackView> {
  var _scaffoldKey;

  String title;

  StackViewState(this.title);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();
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
      key: _scaffoldKey,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, "Hello");
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text(title),
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

  void _persistentBottomSheet() {
    _scaffoldKey.currentState.showBottomSheet((context) {
      return new Container(
        color: Colors.white,
        height: 250.0,
        child: new Center(
          child: Container(
            height: 200.0,
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print("Hello");

                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => LinearLayout()));

                    _persistentBottomSheet();
                  },
                  child: Text(
                    "Hellobfsviusgiwgfiuewuifieuwfiuweiuwegfewbcecbewifjkbjakbcjba",
                    softWrap: true,
                  ),
                ),
                Text("Hello2"),
                Text("Hello3"),
              ],
            ),
          ),
        ),
      );
    });
  }
}
