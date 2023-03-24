import 'package:flutter/material.dart';

import '../screen/splash_screen.dart';
import 'constans.dart';

class AppRoot extends StatefulWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {

  @override
  void initState() {
    WidgetsBinding
        .instance
        .addPostFrameCallback(

            (_) async{
          await readJson();
          await getSettings();
        }
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quran',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
    );
  }
}
