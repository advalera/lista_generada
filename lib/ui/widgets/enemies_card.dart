
import 'package:flutter/material.dart';

class card_enemies extends StatelessWidget {
  final String name, pic;

  const card_enemies({
    Key? key,
    required this.name,
    required this.pic
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(name),
      const SizedBox(width: 10.0,),
      Image.network(pic, width: 50.0,),
    ],
    );
  }
}