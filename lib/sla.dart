import 'package:flutter/material.dart';

class Sla extends StatefulWidget {
  const Sla({Key? key}) : super(key: key);

  @override
  State<Sla> createState() => _SlaState();
}

class _SlaState extends State<Sla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Oi"),
      ),
    );
  }
}