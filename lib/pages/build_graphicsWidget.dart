import 'package:flutter/material.dart';
import 'package:mobile/domain/rep.dart';
import 'package:mobile/pages/detailsG.dart';
import 'package:mobile/figure/bd.dart';

class InformesG extends StatefulWidget {
  final Graficos graficos;

  const InformesG({
    Key? key,
    required this.graficos,
  }) : super(key: key);

  @override
  _InformesGState createState() => _InformesGState();
}

class _InformesGState extends State<InformesG> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailsG(
                graficos: widget.graficos,
              );
            },
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImage(widget.graficos.imagem),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.graficos.titulo,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildImage(String imagem) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(8),
      ),
      child: Container(
        height: 240,
        width: double.infinity,
        child: Image.network(
          imagem,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
