import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/pages/login.dart';

class Landing_page extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<Landing_page> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFFF8DC),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(),
                child: Lottie.network(
                  "https://assets7.lottiefiles.com/packages/lf20_3R3PEk.json",
                  height: 200.0,
                ),
              ),
              Text(
                "StudlyBasis",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Pacifico-Regular',
                  color: Colors.black45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
