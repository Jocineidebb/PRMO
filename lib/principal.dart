import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DC),
      appBar: AppBar(

        backgroundColor: const Color(0xfffcee8b7),
        toolbarHeight: 120,
        shape: const RoundedRectangleBorder(
        ),
      ),
      // ),
      //body

      body: Padding(
        padding: const EdgeInsets.all(30.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Hora do foco",
                    style: TextStyle(
                        fontSize: 28),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.network('https://i.ibb.co/nP2X31p/laapis.png'),
              const SizedBox(
                height: 50,
              ),
              const Text("45:00",
                style: TextStyle(
                    fontSize: 40
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //text input
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  '  INICIAR  ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF571F04),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFF4DE9C),
                  shape: const RoundedRectangleBorder(
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