import 'package:dillfindkoss/pages/home/home.dart';
import 'package:dillfindkoss/providers/space_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'pages/splash/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Dil-FindKoss',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Home()),
    );
  }
}
