import 'package:flutter/material.dart';

/// Flutter code sample for [Stepper].

void main() => runApp(const StepperExampleApp());

class StepperExampleApp extends StatelessWidget {
  const StepperExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 252, 252),
        appBar: AppBar(title: const Text('Wimple Auto Transport'), backgroundColor: Colors.red,),
        body: const Center(
          child: StepperExample(),
        ),
      ),
    );
  }
}

class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
          setState(() {
            _index += 1;
          });
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: <Step>[
        Step(
          title: const Text('Destination'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: const TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Transfer car From',
  ),
),
          ),
        ),
        const Step(
          title: Text('Vehicle'),
          content: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Year'
            ),
          ),
        ),
        const Step(
          title: Text('Date'),
          content: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Your email' 
            ),
          ),
        )
      ],
    );
  }
}
