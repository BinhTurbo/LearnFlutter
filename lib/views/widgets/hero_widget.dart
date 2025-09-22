import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "hero1",
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(
          "https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png",
          color: Colors.teal,
          colorBlendMode: BlendMode.darken,
        ),
      ),
    );
  }
}
