import 'package:flutter/material.dart';
import 'package:tokuu/constant.dart';
import 'package:tokuu/models/toku_model.dart';
import 'package:tokuu/widgets/toku_item.dart';

class NumbersScreen extends StatelessWidget {
   NumbersScreen({super.key});

   final List<TokuModel> model = [
     TokuModel(jpName: 'ichi', enName: 'one', image: 'assets/images/numbers/number_one.png', sound: 'sounds/numbers/number_one_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'ni', enName: 'two', image: 'assets/images/numbers/number_two.png', sound: 'sounds/numbers/number_two_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'san', enName: 'three', image: 'assets/images/numbers/number_three.png', sound: 'sounds/numbers/number_three_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'shi', enName: 'four', image: 'assets/images/numbers/number_four.png', sound: 'sounds/numbers/number_four_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'go', enName: 'five', image: 'assets/images/numbers/number_five.png', sound: 'sounds/numbers/number_five_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'roku', enName: 'six', image: 'assets/images/numbers/number_six.png', sound: 'sounds/numbers/number_six_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'shichi', enName: 'seven', image: 'assets/images/numbers/number_seven.png', sound: 'sounds/numbers/number_seven_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'hachi', enName: 'eight', image: 'assets/images/numbers/number_eight.png', sound: 'sounds/numbers/number_eight_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'kyu / ku', enName: 'nine', image: 'assets/images/numbers/number_nine.png', sound: 'sounds/numbers/number_nine_sound.mp3', color: kColorNum),
     TokuModel(jpName: 'juu', enName: 'ten', image: 'assets/images/numbers/number_ten.png', sound: 'sounds/numbers/number_ten_sound.mp3', color: kColorNum),


   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
      ),
      body: ListView(
        children: model.map((e) =>TokuItem(model: e)).toList()

      ),
    );
  }
}
