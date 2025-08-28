import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'logo',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset('assets/images/logo/aLogo.png',
        color: Colors.teal,
          colorBlendMode: BlendMode.dstATop,
        ),
      ),
    );

    // TODO: implement build
    throw UnimplementedError();
  }
}
