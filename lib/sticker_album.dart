import 'package:flutter/material.dart';

class StickerAlbum extends StatefulWidget {
  const StickerAlbum({Key? key}) : super(key: key);

  @override
  State<StickerAlbum> createState() => _StickerAlbumState();
}

class _StickerAlbumState extends State<StickerAlbum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Está é a tela do álbum de figurinhas"),
      ),
    );
  }
}