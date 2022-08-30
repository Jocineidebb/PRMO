import 'package:flutter/material.dart';
import 'package:mobile/salutation_page.dart';

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
          context, MaterialPageRoute(builder: (context) => Salutation()));
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
              AnimatedContainer(
                duration: Duration(
                  milliseconds: 500,
                ),
                curve: Curves.easeInOutBack,
                child: Image(
                  image: NetworkImage('https://i.ibb.co/nP2X31p/laapis.png'),
                  width: 181,
                  height: 179,
                ),
              ),
              Text(
                "StudlyBasis",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Sparkling',
                  color: Colors.black12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
