import 'package:avenger_info_app/domain/case_uses/avenger_info.dart';
import 'package:avenger_info_app/ui/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AvengersInfo(),
      child: MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home' : (context) => HomePage(),
      },
    ),
    );
  }
}