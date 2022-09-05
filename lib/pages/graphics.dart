import 'package:mobile/domain/rep.dart';
import 'package:flutter/material.dart';
import 'package:mobile/figure/bd.dart';
import 'package:mobile/pages/build_graphicsWidget.dart';

class Graphics extends StatefulWidget {
  const Graphics({Key? key}) : super(key: key);

  @override
  State<Graphics> createState() => _GraphicsState();
}

class _GraphicsState extends State<Graphics> {
  List<Graficos> list = BD.listaG;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: buildBody(),
    );
  }

  buildBody() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.5,
      ),
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Material(
            child: InformesG(
          graficos: list[index],
        ));
      },
    );
  }
}
