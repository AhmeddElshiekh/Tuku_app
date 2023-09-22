import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class TokuModel{

  final String jpName;
  final String enName;
  String? image;
  final String sound;
  Color? color;


   TokuModel({ this.color,required this.jpName,required this.enName, this.image,required this.sound});

   playSound(){
    final player =AudioPlayer();
    player.play(AssetSource(sound));
  }
}