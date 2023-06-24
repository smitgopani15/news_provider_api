import 'package:flutter/material.dart';
import 'package:news_provider_api/screen/provider/home_provider.dart';
import 'package:news_provider_api/screen/view/epaper_screen.dart';
import 'package:news_provider_api/screen/view/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
          'epaper_screen': (context) => EpaperScreen(),
        },
      ),
    ),
  );
}
