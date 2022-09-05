import 'package:flutter/material.dart';
import 'package:mobile/pages/login.dart';
import 'package:mobile/pages/salutation_page.dart';
import 'package:lottie/lottie.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DC),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, bottom: 30),
                child: Lottie.network(
                  "https://assets7.lottiefiles.com/packages/lf20_3R3PEk.json",
                  height: 100.0,
                ),
              ),
              Text(
                'Studlybasis',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Pacifico-Regular',
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
                      focusColor: const Color(0xFFE05C5C),
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
                    fontFamily: 'Heebo',
                    fontSize: 20,
                    color: Color(0xFF571F04),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: const RoundedRectangleBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 30),
                    child: Lottie.network(
                      "https://assets2.lottiefiles.com/packages/lf20_ijeoao1k.json",
                      height: 50.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 30),
                    child: Lottie.network(
                      "https://assets10.lottiefiles.com/packages/lf20_dlwxnsr1.json",
                      height: 50.0,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Já possui cadastro?",
                    style: TextStyle(
                      fontFamily: 'Heebo',
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Login()));
                    },
                    child: Text(
                      "Entrar",
                      style: TextStyle(
                        fontFamily: 'Heebo',
                        fontSize: 22,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
