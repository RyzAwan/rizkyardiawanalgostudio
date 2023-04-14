import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/controller_meme.dart';
import 'meme_screen.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  @override
  void initState() {
    Get.put(MemeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {},
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "MimGenerator",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              GetBuilder<MemeController>(
                  initState: (state) => MemeController.to.getMeme(),
                  builder: (_) {
                    print(_.dataMeme);
                    return const Padding(
                      padding: EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 30),
                      child: ScreenMeme(),
                    );
                  })
            ],
          ),
        ),
      ),
    ));
  }
}
