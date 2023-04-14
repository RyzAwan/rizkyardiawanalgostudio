import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemMeme extends StatefulWidget {
  String urlImage;
  ItemMeme(this.urlImage, {Key? key}) : super(key: key);

  @override
  State<ItemMeme> createState() => _ItemMemeState();
}

class _ItemMemeState extends State<ItemMeme> {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(widget.urlImage))),
    );
  }
}
