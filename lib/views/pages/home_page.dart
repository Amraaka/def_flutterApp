import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          HeroWidget(),
          Text("Home Page")
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}