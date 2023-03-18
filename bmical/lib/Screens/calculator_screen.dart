import 'package:flutter/material.dart';

import '../decisions/decision.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double bmi = 0;
  final _weight = TextEditingController();
  final _height = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            TextFormField(
              controller: _weight,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter Weight in KGs',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _height,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter Height in Centimeters',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  bmi = calBMI(
                    double.parse(_height.text),
                    double.parse(_weight.text),
                  );
                });
              },
              child: const Text("Calculate"),
            ),
            const SizedBox(
              height: 20,
            ),
            FittedBox(
              child: bmi == 0 ? null : Text('BMI:$bmi'),
            ),
            const SizedBox(
              height: 20,
            ),
            FittedBox(
              child: bmi < 18.4 && bmi != 0
                  ? const Underweight()
                  : bmi > 18.5 && bmi < 24.9
                      ? const NormalBMI()
                      : bmi > 25 && bmi < 29.9
                          ? const OverweightBMI()
                          : bmi > 30
                              ? const ObeseBMI()
                              : null,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.network(
                'https://www.ncbi.nlm.nih.gov/books/NBK535456/bin/bmi__WHO.jpg')
          ],
        ),
      ),
    );
  }
}
