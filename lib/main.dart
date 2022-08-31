import 'package:findkoss/providers/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/splash/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
          title: 'FindKoss',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: Splash()),
    );
  }
}
