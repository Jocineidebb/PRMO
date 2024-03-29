import 'package:flutter/material.dart';
import 'package:mobile/pages/menu.dart';

class Salutation extends StatefulWidget {
  @override
  _SalutationState createState() => _SalutationState();
}

class _SalutationState extends State<Salutation> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Menu()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF8DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(
                milliseconds: 5000,
              ),
              child: Image.network('https://i.ibb.co/svRdHVV/caderno.png'),
              width: 181,
              height: 179,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Bem-vindo, estudante!',
              style: TextStyle(
                fontFamily: 'Pacifico-Regular',
                fontSize: 28,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
