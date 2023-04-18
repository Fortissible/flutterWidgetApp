import 'package:flutter/material.dart';

Row getRecommendation(String text, List<String> imgPath){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        flex:1,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1,
            fontFamily: 'Dongle',
            fontWeight: FontWeight.normal,
            fontSize: 24,
          ),
        ),
      ),
      const SizedBox(
        width: 20,
      ),
      Flexible(
        flex:3,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: imgPath.length,
          itemBuilder: (BuildContext context, int idx){
            return Image.asset(imgPath[idx],height: 40,width: 40);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
    ],
  );
}