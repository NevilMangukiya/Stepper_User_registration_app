import 'package:adv_outcaster_profile/screens/stepperdetails.dart';
import 'package:flutter/material.dart';

class StepperPage extends StatefulWidget {
  const StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Your Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: StepperType.vertical,
                currentStep: _currentStep,
                onStepTapped: (index) {
                  setState(() {
                    _currentStep = index;
                  });
                },
                onStepContinue: () {
                  (_currentStep <= 10)
                      ? (_currentStep == 10)
                          ? Navigator.of(context).pushNamed('/')
                          : setState(() {
                              _currentStep += 1;
                            })
                      : null;
                },
                onStepCancel: () {
                  (_currentStep >= 1)
                      ? setState(() {
                          _currentStep -= 1;
                        })
                      : null;
                },
                steps: [
                  Step(
                    title: const Text(
                      "Profile Picture",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Name",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Phone",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Phone",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 2
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Email",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Email",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 3
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "DOB",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "DOB",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 4
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Gender",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Gender",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 5
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Current Location",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Current Location",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 6
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Nationalities",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Nationalities",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 7
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Relegion",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Relegion",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 8
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Languages",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Languages",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 9
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                  Step(
                    title: const Text(
                      "Biography",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    content: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Biography",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(),
                          ),
                        )
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 10
                        ? StepState.complete
                        : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
