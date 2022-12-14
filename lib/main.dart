import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:project1/home_module/presentation/controller/home_cubit.dart';
import 'package:project1/home_module/presentation/screens/add_occupations_screen.dart';
import 'package:project1/home_module/presentation/screens/edite_screen.dart';
import 'package:project1/home_module/presentation/screens/home_screen.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getRegion(),
      child: MaterialApp(
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
        home: const EditeScreen(),
      ),
    );
  }
}
