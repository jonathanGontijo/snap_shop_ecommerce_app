import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snap_shop_ecommerce_app/provider/user_provider.dart';
import 'package:snap_shop_ecommerce_app/views/auth/create_account_page.dart';
import 'package:snap_shop_ecommerce_app/views/auth/login_page.dart';
import 'package:snap_shop_ecommerce_app/views/bottoNav/home_page.dart';

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
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Snap & Shop eCommerce App',
        theme: ThemeData(
          fontFamily: 'Couture',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        ),
        routes: {
          '/login': (context) => const LoginPage(),
          '/create-account': (context) => const CreateAccountPage(),
          '/home': (context) => const HomePage(),
        },
        home: LoginPage(),
      ),
    );
  }
}
