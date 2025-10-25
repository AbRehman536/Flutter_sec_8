import 'package:flutter/material.dart';

class StudentQuizScreen extends StatelessWidget {
  const StudentQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Quiz'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 Image Section
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/quiz.png', // Add an image in your assets folder
                  height: 120,
                  width: 120,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // 🔹 Title
            const Center(
              child: Text(
                'Welcome to Your Quiz!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 🔹 Input Fields (Name, Email)
            const Text(
              'Enter Your Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),

            TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)),
                prefixIcon: const Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 12),

            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12)),
                prefixIcon: const Icon(Icons.email),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Quiz Questions using ListTile
            const Text(
              'Question 1: Which language is used for Flutter?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),

            ListTile(
              leading: const Icon(Icons.circle_outlined),
              title: const Text('Python'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.circle_outlined),
              title: const Text('Dart'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.circle_outlined),
              title: const Text('Java'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.circle_outlined),
              title: const Text('C++'),
              onTap: () {},
            ),

            const SizedBox(height: 20),

            // 🔹 Row for buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Previous'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Next'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
