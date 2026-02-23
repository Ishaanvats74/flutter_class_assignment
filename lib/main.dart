import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: const Text("My First Flutter App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Hello World",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    textStyle: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  child: const Text("Press Me"),
                ),
                const SizedBox(height: 40),
                const Icon(Icons.email, size: 60, color: Colors.blue),
                const SizedBox(height: 24),
                const Text(
                  'Hello World!',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
                ),
                const SizedBox(height: 48),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 96.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.blue, width: 2),
                      ),
                      labelText: 'Enter your name',
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png",
                  height: 40,
                ),
                const SizedBox(height: 40),

                Container(
                  margin: const EdgeInsets.all(20),
                  child: Table(
                    border: TableBorder.all(color: Colors.black, width: 3),
                    children: const [
                      TableRow(children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('ID',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ]),
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8), child: Text('1')),
                        Padding(
                            padding: EdgeInsets.all(8), child: Text('Ishaan')),
                      ]),
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8), child: Text('2')),
                        Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Ria')),
                      ]),
                      TableRow(children: [
                        Padding(
                            padding: EdgeInsets.all(8), child: Text('3')),
                        Padding(
                            padding: EdgeInsets.all(8),
                            child: Text('Krrish')),
                      ]),
                      
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange,
                      ),
                      child: const Text(
                        "React.js",
                        style: TextStyle(
                            color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange,
                      ),
                      child: const Text(
                        "Flutter",
                        style: TextStyle(
                            color: Colors.white, fontSize: 25),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange,
                      ),
                      child: const Text(
                        "MySQL",
                        style: TextStyle(
                            color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        padding: const EdgeInsets.all(12),
                      ),
                      child: const Text(
                        "React.js",
                        style:
                            TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        padding: const EdgeInsets.all(12),
                      ),
                      child: const Text(
                        "Flutter",
                        style:
                            TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        padding: const EdgeInsets.all(12),
                      ),
                      child: const Text(
                        "MySQL",
                        style:
                            TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}