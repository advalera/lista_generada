import 'package:avenger_info_app/domain/case_uses/avenger_info.dart';
import 'package:avenger_info_app/ui/widgets/enemies_card.dart';
import 'package:avenger_info_app/ui/widgets/floating_buttons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final avengerInf = Provider.of<AvengersInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Avenger: ${avengerInf.avenger}'),
        leading: Center(
          child: CircleAvatar(
            minRadius: 18.0,
            maxRadius: 18.0,
            backgroundImage: NetworkImage(avengerInf.avengerPic),
          ),
          ),
        ),
      body: Center(
        child: ListView.builder(
          itemCount: avengerInf.enemiesPic.length,
          itemBuilder: (context, index) {
            return card_enemies(name: avengerInf.enemies[index], pic: avengerInf.enemiesPic[index]);
          }
          ),
        ),
      floatingActionButton: AppFloatingButtons(),
    );
  }
}