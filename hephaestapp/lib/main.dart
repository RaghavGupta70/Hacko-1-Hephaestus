import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
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
     home: Scaffold(
       body: Center(
         child:Text('Hello'),
       ),
     ),
    );
  }
}