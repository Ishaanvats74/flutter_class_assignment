import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 🔹 Hello World
                const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),

                const SizedBox(height: 20),

                // 🔹 Email Icon
                const Icon(
                  Icons.email,
                  size: 50,
                  color: Colors.red,
                ),

                const SizedBox(height: 20),

                // 🔹 Network Image
                Image.asset(
                  "assets/images/pexels-bobelnuk-33987626.jpg",
                  height: 120,
                  errorBuilder: (context, error, stackTrace) {
                    return const Text("Image failed to load");
                  },
                ),

                const SizedBox(height: 30),

                // 🔹 Text Box
                TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter text",
                    prefixIcon: Icon(Icons.text_fields),
                  ),
                  onChanged: (value) {
                    setState(() {
                      text = value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                // 🔹 Display typed text
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
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
