import 'package:flutter/material.dart';

import 'Login.dart';

void main() {
  runApp(const MaterialApp(home: StartPage()));
}

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0), // Set custom AppBar height
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
          backgroundColor: const Color(0xFF003690), // Set AppBar color to blue
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 50), // Space below the AppBar
            ElevatedButton.icon(
              icon: const Icon(Icons.g_mobiledata, color: Colors.white),
              label: const Text("Continue with Google",style: TextStyle(color: Colors.white)),
              onPressed: () {
                print("Google Button Pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Google theme color
                minimumSize: const Size.fromHeight(50), // Increase button height
              ),
            ),
            const SizedBox(height: 20), // Space between buttons
            ElevatedButton.icon(
              icon: const Icon(Icons.facebook, color: Colors.white),
              label: const Text("Continue with Facebook",style: TextStyle(color: Colors.white)),
              onPressed: () {
                print("Facebook Button Pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Facebook theme color
                minimumSize: const Size.fromHeight(50), // Increase button height
              ),
            ),
            const SizedBox(height: 20), // Space between buttons
            ElevatedButton.icon(
              icon: const Icon(Icons.email, color: Colors.white),
              label: const Text("Continue with Email",style: TextStyle(color: Colors.white)),
              onPressed: () {
                // Navigate to login page when the button is pressed
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Email theme color
                minimumSize: const Size.fromHeight(50), // Increase button height
              ),
            ),
            const Spacer(), // Push the remaining content to the bottom
            const Text(
              "Sign in for easier access to your trip details",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Text(
              "By signing in or creating an account, you agree with our "
                  "Terms & conditions and Privacy statement",
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              "© 2006-2024 Booking.com",
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}