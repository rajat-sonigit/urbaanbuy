import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urbaanbuy/cart/cart_model.dart';

import 'package:urbaanbuy/walletandsplash/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Urban-buy',
        home: SafeArea(
          child: SplashScreen(),
        ),
      ),
    );
  }
}
