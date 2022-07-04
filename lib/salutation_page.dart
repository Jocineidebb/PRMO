import 'package:flutter/material.dart';
import 'package:helloworld/landing_page.dart';

class Matutina extends StatefulWidget {
  @override
  _MatutinaState createState() => _MatutinaState();
}

class _MatutinaState extends State<Matutina> {
  /*@override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }*/

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(
                milliseconds: 5000,
              ),
              child: Image.network('https://i.ibb.co/NT9HPhX/7651008.png'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Boa noite, estudante!',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Futura',
                color: Color(0xFF0C09092B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
