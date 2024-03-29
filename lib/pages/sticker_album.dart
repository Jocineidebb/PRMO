import 'package:mobile/domain/rep.dart';
import 'package:flutter/material.dart';
import 'package:mobile/figure/bd.dart';
import 'package:mobile/pages/build_widget.dart';

class Album extends StatefulWidget {
  const Album({Key? key}) : super(key: key);

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  List<Figurinhas> list = BD.lista;

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
            child: Informes(
          figurinhas: list[index],
        ));
      },
    );
  }
}
