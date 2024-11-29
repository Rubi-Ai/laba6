import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Логотип Flutter
            Center(
              child: Image.network(
                "https://upload.wikimedia.org/wikipedia/commons/thumb/4/44/Google-flutter-logo.svg/1024px-Google-flutter-logo.svg.png",
                width: 200,
              ),
            ),
            const SizedBox(height: 24.0),

            //label
            const Text(
              'Sign up',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 24.0),

            // name label
            const TextField(
              decoration: InputDecoration(
                labelText: 'Name:',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),

            // email label
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
            const SizedBox(height: 24.0),

            // sing up btn
            SizedBox(
              width: double.infinity,
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
                child: const Text("Sign up"),
              ),
            ),
            const SizedBox(height: 16.0),

            // back btn
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}