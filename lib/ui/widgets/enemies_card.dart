
import 'package:flutter/material.dart';

class card_enemies extends StatelessWidget {
  final String avenger, enemy, pic;

  const card_enemies({
    Key? key,
    required this.avenger,
    required this.enemy,
    required this.pic
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 28.0),        
            Expanded(
              child: Text('Avenger: $avenger',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            const SizedBox(width: 10.0,),       
            Expanded(
              child: Text('Enemigo: $enemy',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            SizedBox(
              width: 110.0,
              child: Center(
                child: Image.network(pic, width: 100.0,),
                ),),
            const SizedBox(width: 10.0,),
        ],
        ),
        const SizedBox(height: 20.0,),
      ],
    );
  }
}