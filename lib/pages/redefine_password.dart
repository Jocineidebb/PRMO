import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile/pages/registration.dart';

class RedefinePass extends StatefulWidget {
  const RedefinePass({Key? key}) : super(key: key);
  _RedefinePassState createState() => _RedefinePassState();
}

class _RedefinePassState extends State<RedefinePass> {
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
                  "https://assets1.lottiefiles.com/private_files/lf30_ibes9n3c.json",
                  height: 200.0,
                ),
              ),
              Text(
                'Alterar Senha',
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
                child: Text(
                  'Informe o E-mail, o Usuário ou o Telefone para enviarmos um link para alterar a senha',
                  style: TextStyle(
                    fontFamily: 'Heebo',
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                child: TextField(
                    style: TextStyle(color: Colors.white60, fontSize: 24),
                    decoration: InputDecoration(
                      focusColor: const Color(0xFFE05C5C),
                      icon: Icon(Icons.key),
                      labelText: "E-mail, Usuário ou Telefone",
                      labelStyle: TextStyle(fontSize: 14, color: Colors.grey),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Alterar',
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
              SizedBox(
                height: 40,
              ),
              Text(
                "Ainda não possui conta?",
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
                    fontSize: 20,
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
