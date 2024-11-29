import 'package:flutter/material.dart';

import 'Password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0), // Set custom AppBar height
        child: AppBar(
          title: const Text(
            "Your_App_Name",
            style: TextStyle(
              color: Colors.white, // Set the text color
              fontWeight: FontWeight.bold, // Make the text bold
              fontSize: 24,
            ),
          ),
          centerTitle: true, // Ensure text is centered
          backgroundColor: const Color(0xFF003680), // Set AppBar color to blue
          leading: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context); // Close and return to the previous screen
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align all children to start
          children: [
            const SizedBox(height: 25),
            const Text(
              'Enter your email address',
              style: TextStyle(
                fontSize: 22, // Set the text size
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "We'll use this to sign you in or to create an account if you don't have one yet.",
              style: TextStyle(),
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16), // Space between TextField and button
            ElevatedButton(
              onPressed: () {
                // Navigate to login page when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Password()),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50), // Set button height
                backgroundColor: const Color(0xFF003680), // Set button color
              ),
              child: const Text(
                "Continue",
                style: TextStyle(color: Colors.white), // Set button text color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
