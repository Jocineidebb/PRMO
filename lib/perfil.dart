import 'package:flutter/material.dart';

import 'initial_screnn.dart';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InitialScreen(),
      theme: ThemeData(
        //cardColor: Colors.deepOrange,

        //brightness: Brightness.dark,
      ),
    );
  }
}

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DC),
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor:Color(0xFFFcee8b7),
      ),

      //body
      body: Padding(

        padding: const EdgeInsets.all(30.0),

        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://i.pinimg.com/originals/73/e2/58/73e258735eead4dc795c678f3311bee0.jpg")
                      ),

                    ),
                  ),

                  Text(
                    "Nome",
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
              //styling
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),

              Text(
                "biografia",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.4,
              ),

            ],
          ),
        ),
      ),
    );

  }
}
