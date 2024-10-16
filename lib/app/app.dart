import 'package:flutter/material.dart';
import 'package:learn_provider/app/provider/count_provider.dart';
import 'package:learn_provider/app/provider/favourite_provider.dart';
import 'package:learn_provider/app/provider/opacity_provider.dart';
import 'package:learn_provider/app/provider/theme_changer_provider.dart';
import 'package:learn_provider/app/screens/favourite_screen.dart';
import 'package:learn_provider/app/screens/single_provider.dart';
import 'package:learn_provider/app/screens/single_provider_another.dart';
import 'package:learn_provider/app/screens/theme_changer_screen.dart';
import 'package:provider/provider.dart';

class LearnProviderApp extends StatelessWidget {
  const LearnProviderApp({super.key});

  //-------------singleProvider------------
  /*
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_)=> CountProvider(),
        child: const MaterialApp(
          home: SingleProvider(),
        ),
    );
  }
  */

@override
Widget build(BuildContext context) {
  return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CountProvider()),
        ChangeNotifierProvider(create: (_)=> OpacityProvider()),
        ChangeNotifierProvider(create: (_)=> FavouriteProvider()),
        ChangeNotifierProvider(create: (_)=> ThemeChangerProvider())
      ],
      child: Builder(builder: (BuildContext context){
        final themeProvider = Provider.of<ThemeChangerProvider>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              primaryColor: Colors.blue,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white
              )
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.yellow,
                  foregroundColor: Colors.white
              )
          ),
          home: const ThemeChangerScreen(),
        );
      })
  );
}
}
