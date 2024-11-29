import 'package:flutter/material.dart';
import '../Homepage.dart';

class Password extends StatelessWidget {
  const Password({super.key});

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
              fontSize: 26,
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
           const SizedBox(height: 22),
         const Text(
           'Create a password',
               style: TextStyle(
                fontSize: 22, // Set the text size
                  fontWeight: FontWeight.bold, // Make the text bold
           ),
         ),
           const SizedBox(height: 20),
           const TextField(
             decoration: InputDecoration(
               labelText: 'Create Password',
               border: OutlineInputBorder(),
               prefixIcon: Icon(Icons.password),
             ),
           ),
           const SizedBox(height: 10),
           const Text(
             '(x) Has at least 10 characters',
             style: TextStyle(
             ),
           ),
           const Text(
             '(x) Contains at least one number',
             style: TextStyle(
             ),
           ),
           const Text(
             '(x) Contains at least one lowercase letter',
             style: TextStyle(
             ),
           ),
           const Text(
             '(x) Contains at least one uppercase letter',
             style: TextStyle(
             ),
           ),
           const SizedBox(height: 16),
           const TextField(
             decoration: InputDecoration(
               labelText: 'Confirm Password',
               border: OutlineInputBorder(),
               prefixIcon: Icon(Icons.password),
             ),
           ),
           const SizedBox(height: 20),
           ElevatedButton(
             onPressed: () {
               // Navigate to login page when the button is pressed
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) =>  const Homepage()),
               );
             },
             style: ElevatedButton.styleFrom(
               minimumSize: const Size.fromHeight(50), // Set button height
               backgroundColor: const Color(0xFF003680), // Set button color
             ),
             child: const Text(
               "Create account and sign in",
               style: TextStyle(color: Colors.white), // Set button text color
             ),
           ),
      ],
    ),
    ),
       );
  }
}