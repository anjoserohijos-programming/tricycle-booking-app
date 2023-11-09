import 'package:flutter/material.dart';

void main() {
  runApp(const TodApp());
}

class TodApp extends StatelessWidget {
  const TodApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TodApp Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 10, bottom: 10),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        isSelected[0] == true
                            ? const Color.fromARGB(20, 39, 156, 18)
                            : const Color.fromARGB(0, 0, 0, 0),
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        isSelected[0] == true
                            ? const Color.fromARGB(255, 0, 133, 35)
                            : const Color.fromARGB(0, 0, 0, 0),
                      ),
                    ),
                    onPressed: () {
                      isSelected[0] = true;
                      isSelected[1] = false;
                      print(
                          "is Passenger Selected?" + isSelected[0].toString());
                      print("is Driver Selected?" + isSelected[1].toString());
                    },
                    child: const Text("Passenger"),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 10, left: 0, bottom: 10),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        isSelected[1] == true
                            ? const Color.fromARGB(20, 39, 156, 18)
                            : const Color.fromARGB(0, 0, 0, 0),
                      ),
                      foregroundColor: MaterialStatePropertyAll(
                        isSelected[1] == true
                            ? const Color.fromARGB(255, 0, 133, 35)
                            : const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    onPressed: () {
                      isSelected[1] = true;
                      isSelected[0] = false;
                    },
                    child: const Text("Driver"),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            RichText(
              text: const TextSpan(
                  text: "Don't have an account? ",
                  style: TextStyle(color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ]),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(onPressed: () {}, child: const Text("LOGIN")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.ads_click),
      ),
    );
  }
}
