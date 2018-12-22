import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LifeCycle extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LifeCycleState();
  }
}

class LifeCycleState extends State<LifeCycle> {
  String lifeCycle = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    lifeCycle += "\nInit State Called " + DateTime.now().toString();

    print("Init State Called");

    showToast("Init State Called");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    lifeCycle += "\\nDispose Called " + DateTime.now().toString();

    showToast("Dispose Called");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LifeCycle"),
      ),
      body: Center(
        child: Text(
          lifeCycle,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.blue,
          ),
        ),
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
