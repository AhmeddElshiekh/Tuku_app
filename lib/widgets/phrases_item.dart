import 'package:flutter/material.dart';
import 'package:tokuu/models/toku_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.model});
  final TokuModel model;

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 100.0,
      color: const Color(0xff50ADC7),
      child: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      model.jpName,
                      style: const TextStyle(
                        fontSize: 17.0,
                        color: Colors.white,
                      ),

                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      model.enName,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(
                  onPressed: (){
                    model.playSound();
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(height: 25,),
          Divider(
            height: 1.0,
            thickness: 1.0,
          ),
        ],
      ),
    );

  }
}
