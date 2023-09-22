
import 'package:flutter/material.dart';

Widget category({
  required String text,
  required Color color,
  required VoidCallback onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsetsDirectional.only(start: 30.0),
          alignment: Alignment.centerLeft,
          color: color,
          width: double.infinity,
          height: 80.0,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          )),
    );











Widget items({
  required String jpName,
  required String enName,
  required String image,
  required VoidCallback onPressed,
  required Color color,
}) =>
    Container(
      color:color,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFEF6DB),
              child: Image(
                image: AssetImage(image),
                width: 100,
              )),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jpName,
                  style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  enName,
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
              onPressed: onPressed,
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              )),
        ],
      ),
    );



Widget phrasesItems ({
  required String enName,
  required String jpName,
  required VoidCallback onPressed,
})=>  Container(
  height: 100.0,
  color: const Color(0xff50ADC7),
  child: Row(
    children: [
      Padding(
        padding: const EdgeInsetsDirectional.only(start: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              jpName,
              style: const TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),

            ),
             const SizedBox(
              height: 10.0,
            ),
            Text(
              enName,
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
          onPressed: onPressed,
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          )),
    ],
  ),
);
