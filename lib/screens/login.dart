import 'package:e_commerce/screens/HomeScreen.dart';
import 'package:e_commerce/screens/forgotPassword.dart';
import 'package:e_commerce/screens/register.dart';
import 'package:e_commerce/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                ),
                Image.asset(
                  'assets/images/loginLogo.png',
                  width: 72,
                  height: 72,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Welcome to Lafyuu',
                  style: TextStyle(
                    color: Color(0xff223263),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    color: Color(0xff9098B1),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'your email',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock_outline),
                    hintText: 'your password',
                    suffix: Icon(CupertinoIcons.eye_slash),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      fixedSize: Size(width, 45)),
                  child: const Text('Sign In'),
                ),
                SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Divider(),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Text(
                          'OR',
                          style: TextStyle(color: Color(0xff9098B1)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                OutlinedButton.icon(
                  icon: Image.asset(
                    'assets/images/google.png',
                    width: 20,
                    height: 20,
                  ),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(width, 50),
                  ),
                  label: Center(
                    child: Text(
                      'Login with Google',
                      style: TextStyle(
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                OutlinedButton.icon(
                  icon: Icon(
                    Icons.facebook,
                  ),
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(width, 50),
                  ),
                  label: Center(
                    child: Text(
                      'Login with Facebook',
                      style: TextStyle(
                        color: Color(0xff9098B1),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return ForgotPassword();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have a account?',
                      style: TextStyle(
                        color: Color(0xff9098B1),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
