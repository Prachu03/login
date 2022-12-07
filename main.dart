import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/register.dart';




void main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {'login':(context) => const MyLogin(),
    'register':(context) => const MyRegister()},
    ) );
}