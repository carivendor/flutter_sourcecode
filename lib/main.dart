import 'package:flutter/material.dart';
import 'package:flutter_onboarding/pages/AuthPages.dart';
import 'package:flutter_onboarding/pages/TypeVendorForm.dart';
import 'package:flutter_onboarding/provider/auth.dart';

import 'package:provider/provider.dart';
import 'package:flutter_onboarding/pages/onboarding.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Auth(),
        ),
        // ChangeNotifierProvider.value(
        //   value: Products(),
        // ),
        // ChangeNotifierProvider.value(
        //   value: Cart(),
        // ),
        // ChangeNotifierProvider.value(
        //   value: Orders(),
        // ),
      ],
      child: MaterialApp(
          // title: 'MyShop',
          // theme: ThemeData(
          //   primarySwatch: Colors.purple,
          //   accentColor: Colors.deepOrange,
          //   fontFamily: 'Lato',
          // ),
        home : AuthScreen(),
          // home: AuthScreen(),
          routes: {
            // ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            // CartScreen.routeName: (ctx) => CartScreen(),
            // OrdersScreen.routeName: (ctx) => OrdersScreen(),
            // UserProductsScreen.routeName: (ctx) => UserProductsScreen(),
            // EditProductScreen.routeName: (ctx) => EditProductScreen(),
          }),
    );
  }
}

