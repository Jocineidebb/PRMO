import 'package:flutter/material.dart';
import 'package:mobile/pages/menu.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  var isLoading = false;
  final _materias = [
    "Português",
    "Matemática",
    "Química",
    "Física",
    "História",
    "Redação",
    "Filosofia",
    "Literatura",
    "Inglês",
    "Sociologia",
    "Geografia",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF8DC),
      // ),
      //body
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        //form
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Hora do foco",
                      style: TextStyle(fontFamily: 'Heebo', fontSize: 28),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Lottie.network(
                    "https://assets9.lottiefiles.com/private_files/lf30_mbqdayke.json",
                    height: 200.0,
                    repeat: false,
                  ),
                ),
                /*Text(
                  '45:00',
                  style: TextStyle(
                    fontFamily: 'Heebo',
                    fontSize: 34,
                  ),
                ),*/
                Text(
                  _stopwatchText,
                  style: TextStyle(
                    fontFamily: 'Heebo',
                    fontSize: 50,
                  ),
                ),
                DropdownButton<String>(
                    hint: const Text(
                      'Selecione a matéria desejada',
                      style: TextStyle(
                        fontFamily: 'Heebo',
                        fontSize: 14,
                      ),
                    ),
                    items: _materias.map(construirItem).toList(),
                    onChanged: (value) => setState(() {
                          this.value = value;
                        })),
                const SizedBox(
                  height: 25,
                ),
                //text input
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: _resetButtonPressed,
                      child: const Text(
                        'INICIAR',
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
                    ElevatedButton(
                      onPressed: _resetButtonPressed,
                      child: const Text(
                        'RESERTAR',
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> construirItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(fontSize: 20),
      ));

  String? value;
  bool _isStart = true;
  String _stopwatchText = '00:00';
  final _stopWatch = new Stopwatch();
  final _timeout = const Duration(seconds: 1);

  void _startTimeout() {
    new Timer(_timeout, _handleTimeout);
  }

  void _handleTimeout() {
    if (_stopWatch.isRunning) {
      _startTimeout();
    }
    setState(() {
      _setStopwatchText();
    });
  }

  void _startStopButtonPressed() {
    setState(() {
      if (_stopWatch.isRunning) {
        _isStart = true;
        _stopWatch.stop();
      } else {
        _isStart = false;
        _stopWatch.start();
        _startTimeout();
      }
    });
  }

  void _resetButtonPressed() {
    if (_stopWatch.isRunning) {
      _startStopButtonPressed();
    }
    setState(() {
      _stopWatch.reset();
      _setStopwatchText();
    });
  }

  void _setStopwatchText() {
    _stopwatchText =
        (_stopWatch.elapsed.inMinutes % 60).toString().padLeft(2, '0') +
            ':' +
            (_stopWatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');
  }
}
