import 'package:flutter/material.dart';
import 'package:tokuu/constant.dart';
import 'package:tokuu/models/toku_model.dart';
import 'package:tokuu/widgets/toku_item.dart';

class ColorsScreen extends StatelessWidget {
  ColorsScreen({super.key});
  final List<TokuModel> model = [
    TokuModel(jpName: 'Burakku', enName: 'Black', image: 'assets/images/colors/color_black.png', sound: 'sounds/colors/black.wav', color: kColorColor),
    TokuModel(jpName: 'Chairo', enName: 'Brown', image: 'assets/images/colors/color_brown.png', sound: 'sounds/colors/brown.wav', color: kColorColor),
    TokuModel(jpName: 'Hokori ppoi kiiro', enName: 'Dusty yellow', image: 'assets/images/colors/color_dusty_yellow.png', sound: 'sounds/colors/dusty_yellow.wav', color: kColorColor),
    TokuModel(jpName: 'Gurē', enName: 'Gray', image: 'assets/images/colors/color_gray.png', sound: 'sounds/colors/gray.wav', color: kColorColor),
    TokuModel(jpName: 'Midori', enName: 'Green', image: 'assets/images/colors/color_green.png', sound: 'sounds/colors/green.wav', color: kColorColor),
    TokuModel(jpName: 'Aka', enName: 'Red', image: 'assets/images/colors/color_red.png', sound: 'sounds/colors/red.wav', color: kColorColor),
    TokuModel(jpName: 'Shiro', enName: 'White', image: 'assets/images/colors/color_white.png', sound: 'sounds/colors/white.wav', color: kColorColor),
    TokuModel(jpName: 'Kiiro', enName: 'Yellow', image: 'assets/images/colors/yellow.png', sound: 'sounds/colors/yellow.wav', color: kColorColor),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: model.map((e) =>TokuItem(model: e)).toList(),

        ),
      ),
    );
  }
}


