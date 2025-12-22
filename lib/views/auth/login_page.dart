import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formGlobalView = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formGlobalView,
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset('assets/images/image_login.png'),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome Back',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),

                      Text(
                        'Login to your account',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(height: 8),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          validator: (value) => value!.isEmpty
                              ? 'Email address can not be empty'
                              : null,
                          controller: emailController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Email'),
                          ),
                        ),
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          obscureText: true,
                          validator: (value) => value!.isEmpty
                              ? 'Password can not be empty'
                              : null,
                          controller: passwordController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Password'),
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: Text('Login', style: TextStyle(fontSize: 16)),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Dont have an account? "),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/create-account');
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Additional form fields and buttons would go here
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
