import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlist/provider/movieProvider.dart';
import 'package:providerlist/screens/homeScreen.dart';

void main() {
  runApp(
    MultiProvider(child:const MyApp(),providers: [
      ChangeNotifierProvider(create: (_)=>MovieProvider(),)
    ])
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Provider demo app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}
