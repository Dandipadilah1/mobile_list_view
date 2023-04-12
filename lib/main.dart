import 'package:flutter/material.dart';
import 'package:list_view_projekaku/detail_screen.dart';
import 'package:list_view_projekaku/error_screen.dart';
import 'package:list_view_projekaku/list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'list View Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  list_screen(),
        '/detail':(context) => const detail_screen(),
      },
      onGenerateRoute: (setting) {
        if (setting.name == '/'){
          return MaterialPageRoute(
            builder: (context) =>  list_screen(),
            settings: setting,
          );
        }
        if (setting.name == '/detail') {
          return MaterialPageRoute(
            builder: (context) => const detail_screen(),
            settings: setting,          
            );
        }
        return MaterialPageRoute(
          builder: (context)=> const ErrorScreen(),
          settings: setting,
          );
      },
      );
  }
}
