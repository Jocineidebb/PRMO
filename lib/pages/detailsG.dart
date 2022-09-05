import 'package:mobile/domain/rep.dart';
import 'package:flutter/material.dart';

class DetailsG extends StatefulWidget {
  final Graficos graficos;

  const DetailsG({
    Key? key,
    required this.graficos,
  }) : super(key: key);

  @override
  _DetailsGState createState() => _DetailsGState();
}

class _DetailsGState extends State<DetailsG> {
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
      body: Column(
        children: [
          Image.network(widget.graficos.imagem),
          Padding(
            padding: const EdgeInsets.all(00),
            child: Column(
              children: [
                Text(
                  widget.graficos.titulo,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
