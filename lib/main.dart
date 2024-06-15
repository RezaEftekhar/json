import 'package:flutter/material.dart';
import 'package:json_place_holder/common/screens/home_screen.dart';
import 'package:json_place_holder/core/base_bloc_provider.dart/base_bloc_provider.dart';
import 'package:json_place_holder/core/service_locator/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setUpLocator();
  runApp(const BaseBlocProvider(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen()
    );
  }
}
