import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1st_app/provider/count_provider.dart';
import 'package:provider_1st_app/provider/example_one_provider.dart';

import 'package:provider_1st_app/screen/example_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [

        ChangeNotifierProvider(create: (_)=> CountProvider()),
        ChangeNotifierProvider(create: (_)=> ExampleOneProvider()),
      ],
      
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const ExampleOne(),
        ),
      );
    
  }
}
