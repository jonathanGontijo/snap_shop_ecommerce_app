import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:snap_shop_ecommerce_app/views/auth/create_account_page.dart';
import 'package:snap_shop_ecommerce_app/views/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snap & Shop eCommerce App',
      theme: ThemeData(
        fontFamily: 'Couture',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/create-account': (context) => const CreateAccountPage(),
      },
      home: LoginPage(),
      /* home: const Scaffold(
        body: Center(
          child: Text(
            'Welcome to Snap & Shop!',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),*/
    );
  }
}
