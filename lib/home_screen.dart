import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;

  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }

  sub() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }

  divi() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2!;
    });
  }

  mul() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  child: Image.asset('images/calculator.png'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: controller1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'enter first number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: controller2,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'enter second number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: const [
                    Text(
                      'Choose operation: ',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        add();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: const Text('+'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        sub();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: const Text('-'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        mul();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: const Text('*'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        divi();
                        controller1.clear();
                        controller2.clear();
                      },
                      child: const Text('/'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Result: $result',
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
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
