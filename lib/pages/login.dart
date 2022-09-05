import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/pages/registration.dart';
import 'package:mobile/pages/redefine_password.dart';
import 'package:mobile/pages/salutation_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      labelText: "Usuário",
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
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => RedefinePass()));
                },
                child: Text(
                  "Esqueci a senha",
                  style: TextStyle(
                    fontFamily: 'Heebo',
                    fontSize: 20,
                    color: Colors.black45,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Salutation()));
                },
                child: const Text(
                  'Entrar',
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
              Text(
                "Ainda não possui cadastro?",
                style: TextStyle(
                  fontFamily: 'Heebo',
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => Registration()));
                },
                child: Text(
                  "Cadastre-se",
                  style: TextStyle(
                    fontFamily: 'Heebo',
                    fontSize: 22,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
