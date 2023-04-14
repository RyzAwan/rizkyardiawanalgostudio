import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller_meme.dart';
import '../global_wiget/item_image.dart';

class ScreenMeme extends StatefulWidget {
  const ScreenMeme({super.key});

  @override
  State<ScreenMeme> createState() => _ScreenMemeState();
}

class _ScreenMemeState extends State<ScreenMeme> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MemeController>(builder: (_) {
      print("test ${_.dataMeme}");
      return GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            for (int i = 0; i < _.dataMeme.length; i++)
              ItemMeme(_.dataMeme[i].url ?? "")
          ]);
    });
  }
}
