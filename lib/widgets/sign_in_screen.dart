import 'package:flutter/material.dart';
import 'package:laba6/widgets/reset_password_screen.dart';
import 'package:laba6/widgets/signup_screen.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 24.0),

            // Email label
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),

            // password label
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),

            // Sign up btn
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignupScreen(),
                    ),
                  )
                },
                child: const Text("Sign up"),
              ),
            ),
            const SizedBox(height: 16.0),

            // row btns
            Row(
              children: [
                // log in btn
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () => {
                        showDialog(
                          context: context,
                          builder: (BuildContext ctx) {
                            return const AlertDialog(
                              title: Text('Message'),
                              content: Text("Need to implement"),
                            );
                          },
                        )
                      },
                      child: const Text("Log in"),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                // reset btn
                Expanded(
                  child: SizedBox(
                    height: 48,
                    child: OutlinedButton(
                      onPressed: () => {
                        Navigator.push(
                        context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPasswordScreen(),
                          ),
                        )
                      },
                      child: const Text("Reset password"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}