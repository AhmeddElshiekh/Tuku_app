import 'package:flutter/material.dart';
import 'package:tokuu/constant.dart';
import 'package:tokuu/models/toku_model.dart';
import '../widgets/toku_item.dart';

class FamilyMemberScreen extends StatelessWidget {
  FamilyMemberScreen({super.key});
  final List<TokuModel> model = [
    TokuModel(jpName: 'Chichioya', enName: 'Father', image: 'assets/images/family_members/family_father.png', sound: 'sounds/family_members/father.wav', color: kColorFamily),
    TokuModel(jpName: 'Hahaoya', enName: 'Mother', image: 'assets/images/family_members/family_mother.png', sound: 'sounds/family_members/mother.wav', color: kColorFamily),
    TokuModel(jpName: 'Nisan', enName: 'Older brother', image: 'assets/images/family_members/family_older_brother.png', sound: 'sounds/family_members/older_brother.wav', color: kColorFamily),
    TokuModel(jpName: 'Ane', enName: 'Older sister', image: 'assets/images/family_members/family_older_sister.png', sound: 'sounds/family_members/older_sister.wav', color: kColorFamily),
    TokuModel(jpName: 'Otōto', enName: 'Younger brother', image: 'assets/images/family_members/family_younger_brother.png', sound: 'sounds/family_members/younger_brother.wav', color: kColorFamily),
    TokuModel(jpName: 'Imōto', enName: 'Younger sister', image: 'assets/images/family_members/family_younger_sister.png', sound: 'sounds/family_members/younger_sister.wav', color: kColorFamily),
    TokuModel(jpName: 'Musume', enName: 'Daughter', image: 'assets/images/family_members/family_daughter.png', sound: 'sounds/family_members/daughter.wav', color: kColorFamily),
    TokuModel(jpName: 'Musuko', enName: 'Son', image: 'assets/images/family_members/family_son.png', sound: 'sounds/family_members/son.wav', color: kColorFamily),
    TokuModel(jpName: 'Ojisan', enName: 'Grand father', image: 'assets/images/family_members/family_grandfather.png', sound: 'sounds/family_members/grand_father.wav', color: kColorFamily),
    TokuModel(jpName: 'sobo', enName: 'Grand mother', image: 'assets/images/family_members/family_grandmother.png', sound: 'sounds/family_members/grand_mother.wav', color: kColorFamily),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
      ),
      body: ListView(
          children: model.map((e) =>TokuItem(model: e)).toList(),
      ),
    );
  }
}
