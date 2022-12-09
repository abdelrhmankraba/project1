import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'home_module/presentation/screens/home_screen.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ar', 'AE'),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF3F4048),
        fontFamily: 'ElMessiri',
        primarySwatch: Colors.blueGrey,
        primaryColor: const Color(0xFF1C30E0),
      ),
      home: const HomeScreen(),
    );
  }
}
