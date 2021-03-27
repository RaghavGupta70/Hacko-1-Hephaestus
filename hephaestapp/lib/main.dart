
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hephaestapp/helper/helper.dart';
import 'package:hephaestapp/ui/SplashScreen.dart';
import 'package:hephaestapp/ui/authentication.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hephaestapp',
      theme: new ThemeData(
        fontFamily: 'Helvetica',
        accentColor: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
     home: SplashScreen(),
    );
  }
}