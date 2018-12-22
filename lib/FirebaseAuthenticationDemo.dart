import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/LinearLayout.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseAuthenticationDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirebaseAuthenticationDemoState();
  }
}

class FirebaseAuthenticationDemoState
    extends State<FirebaseAuthenticationDemo> {
  var _scaffoldKey;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scaffoldKey = new GlobalKey<ScaffoldState>();

    emailController = TextEditingController();

    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  TextEditingController emailController, passwordController;

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
        title: Text("Register Here"),
      ),
      body: SingleChildScrollView(
        child: Card(
            child: Column(
          children: <Widget>[
            Text(
              "Please Enter Details",
              style: TextStyle(color: Colors.blue, fontSize: 20.0),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: "Enter Email"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(hintText: "Enter Password"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  register();
                },
                child: Text("Register Here"),
              ),
            ),
          ],
        )),
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

  void register() {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((firebaseUser) {
      print("User " + firebaseUser.toString());
      showToast("User Created");
    }).catchError((error) {
      print(error.toString());
      showToast(error.toString());
    });
  }
}
