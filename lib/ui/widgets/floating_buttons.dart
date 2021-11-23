import 'package:avenger_info_app/domain/case_uses/avenger_info.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppFloatingButtons extends StatelessWidget {
  const AppFloatingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final avengerInf = Provider.of<AvengersInfo>(context);
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          onPressed: () => avengerInf.setAvenger(),
          icon: Icon(Icons.navigate_next),
          backgroundColor: Colors.blue, 
          label: Text('Next Avenger'),
          ),
        const SizedBox(
          height: 15.0,
        ),
        FloatingActionButton.extended(
          onPressed: () => avengerInf.setEnemy(),
          icon: Icon(Icons.person_add_disabled),
          backgroundColor: Colors.red, 
          label: Text('Enemy'),
          ),
      ],
    );
  }
}