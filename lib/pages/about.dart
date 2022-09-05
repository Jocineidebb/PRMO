import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'StudlyBasis',
          style: TextStyle(
              fontFamily: 'Pacifico-Regular',
              fontSize: 28,
              color: Colors.black12),
        ),
        toolbarHeight: 120,
        backgroundColor: Color(0xFFFcee8b7),
      ),
      body: Text("Aplicativo desenvolvido para fins acadêmicos"),
    );
  }
}
