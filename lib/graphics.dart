import 'package:flutter/material.dart';
import 'package:mobile/menu.dart';

class Graphics extends StatefulWidget {
  @override
  _GraphicsState createState() => _GraphicsState();
}

class _GraphicsState extends State<Graphics> {
  @override
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DC),
      appBar: AppBar(
        backgroundColor: const Color(0xfffcee8b7),
        toolbarHeight: 120,
        shape: const RoundedRectangleBorder(),
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
                  Text(
                    "Gráficos de Desempenho",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.network(
                  'https://i.pinimg.com/564x/a5/b7/11/a5b7114690af584f781e2d4821a329af.jpg'),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Horas de foco da semana: XX",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}