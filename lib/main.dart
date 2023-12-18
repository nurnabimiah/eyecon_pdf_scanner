
import 'package:eyecon_pdf_scanner_app/screens/my_app_screen.dart';
import 'package:eyecon_pdf_scanner_app/screens/navbar.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MyApp(),
  );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: NavBar(),

    );
  }
}
