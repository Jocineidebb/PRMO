import 'package:flutter/material.dart';
import 'package:mobile/menu.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
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
      backgroundColor: const Color(0xFFFFF8DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage('https://i.ibb.co/nP2X31p/laapis.png'),
            ),
            Text(
              'Studlybasis',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Futura',
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 300,
              child: TextField(
                  style: TextStyle(color: Colors.white60, fontSize: 24),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Nome",
                    labelStyle: TextStyle(color: Colors.grey),
                  )),
            ),
            Container(
              height: 50,
              width: 300,
              child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white60, fontSize: 24),
                  decoration: InputDecoration(
                    icon: Icon(Icons.mail),
                    labelText: "E-mail",
                    labelStyle: TextStyle(color: Colors.grey),
                  )),
            ),
            Container(
              height: 50,
              width: 300,
              child: TextField(
                  style: TextStyle(color: Colors.white60, fontSize: 24),
                  decoration: InputDecoration(
                    icon: Icon(Icons.key),
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.grey),
                  )),
            ),
            Container(
              height: 50,
              width: 300,
              child: TextField(
                  style: TextStyle(color: Colors.white60, fontSize: 24),
                  decoration: InputDecoration(
                    icon: Icon(Icons.key),
                    labelText: "Confirme sua senha",
                    labelStyle: TextStyle(color: Colors.grey),
                  )),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Cadastrar',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF571F04),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFF4DE9C),
                shape: const RoundedRectangleBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}