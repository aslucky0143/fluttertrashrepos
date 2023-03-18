import 'package:flutter/material.dart';

double calBMI(double height, double weight) {
  double h = height * height / 10000, w = weight;
  double bMI = w / h;
  return bMI;
}

class ObeseBMI extends StatelessWidget {
  const ObeseBMI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Category : Obese ',
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}

class OverweightBMI extends StatelessWidget {
  const OverweightBMI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Category : OverWeight ',
          style: TextStyle(color: Colors.redAccent),
        ),
      ],
    );
  }
}

class NormalBMI extends StatelessWidget {
  const NormalBMI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          ' Category : Normal',
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}

class Underweight extends StatelessWidget {
  const Underweight({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Your are in Under weight \n',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }
}
