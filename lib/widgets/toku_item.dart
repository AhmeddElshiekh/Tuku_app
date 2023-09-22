import 'package:flutter/material.dart';
import 'package:tokuu/models/toku_model.dart';

class TokuItem extends StatelessWidget {
  const TokuItem({super.key, required this.model});
  final TokuModel model;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: model.color,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  color: const Color(0xffFEF6DD),
                  child: Image(
                    image: AssetImage(model.image!),
                    width: 100,
                  )),
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.jpName,
                      style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      model.enName,
                      style: const TextStyle(
                        fontSize: 20.0,
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
          Divider(
            height: 1.0,
            thickness: 1.0,
          ),
        ],
      ),
    );

  }
}
