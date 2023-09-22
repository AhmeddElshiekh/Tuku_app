// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tokuu/models/toku_model.dart';
import 'package:tokuu/widgets/phrases_item.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});

  final List<TokuModel> model = [
    TokuModel(jpName: 'Kimasu ka', enName: 'Are you coming',  sound: 'sounds/phrases/are_you_coming.wav'),
    TokuModel(jpName: 'Kōdoku suru koto o wasurenaide kudasai', enName: 'Don\'t forget to subscribe',  sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    TokuModel(jpName: 'Daisukidesu, kibun wa dōdesu ka', enName: 'I love how are you feeling',  sound: 'sounds/phrases/how_are_you_feeling.wav'),
    TokuModel(jpName: 'Watashi wa anime ga daisukidesu', enName: 'I love anime',  sound: 'sounds/phrases/i_love_anime.wav'),
    TokuModel(jpName: 'Watashi wa puroguramingu ga daisukidesu', enName: 'I love programming',  sound: 'sounds/phrases/i_love_programming.wav'),
    TokuModel(jpName: 'Puroguramingu wa kantandesu', enName: 'Programming is easy', sound: 'sounds/phrases/programming_is_easy.wav'),
    TokuModel(jpName: 'Namae wa nandesu ka', enName: 'What is your name', sound: 'sounds/phrases/what_is_your_name.wav'),
    TokuModel(jpName: 'Doko ni iku no', enName: 'Where are you going', sound: 'sounds/phrases/where_are_you_going.wav'),
    TokuModel(jpName: 'Hai, ikimasu', enName: 'Yes i\'m coming', sound: 'sounds/phrases/yes_im_coming.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phrases'),
      ),
      body: ListView(
        children: model.map((e) =>PhrasesItem(model: e)).toList(),
      ),
    );
  }
}
