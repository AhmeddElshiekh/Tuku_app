import 'package:flutter/material.dart';
import 'package:tokuu/components/components.dart';
import 'package:tokuu/screens/colors_screen.dart';
import 'package:tokuu/screens/family_member_screen.dart';
import 'package:tokuu/screens/numbers_screen.dart';
import 'package:tokuu/screens/phrases_screen.dart';

class TokuHome extends StatelessWidget {
  const TokuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Toku')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            category(
              color: const Color(0xffEF9235),
              text: 'Numbers',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NumbersScreen(),
                    ));
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            category(
              color: const Color(0xff558B37),
              text: 'Family Members',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FamilyMemberScreen(),
                    ));
              },
            ),
             const SizedBox(
              height: 20.0,
            ),
            category(
              color: const Color(0xff79359F),
              text: 'Colors',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorsScreen(),
                    ));
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            category(
              color: const Color(0xff50ADC7),
              text: 'Phrases',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PhrasesScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
