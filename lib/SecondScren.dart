import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "thank you for submitting",
                style: TextStyle(color: Colors.blue, fontSize: 25),
              ),
              ElevatedButton(
                  child: Text("Back to Home Screen"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "This is Center Short Toast",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Text("Toast Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
