// import 'package:flutter/material.dart';
//
// class MyStepperPage extends StatefulWidget {
//   const MyStepperPage({Key? key}) : super(key: key);
//
//   @override
//   State<MyStepperPage> createState() => _MyStepperPageState();
// }
//
// class _MyStepperPageState extends State<MyStepperPage> {
//   int _currentStep = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             Expanded(
//               child: Stepper(
//                 type: StepperType.vertical,
//                 currentStep: _currentStep,
//                 steps: [
//                   Step(
//                     title: const Text(
//                       "Profile Picture",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                       ),
//                     ),
//                     content: Column(),
//                     isActive: _currentStep >= 0,
//                     state: _currentStep >= 0
//                         ? StepState.complete
//                         : StepState.disabled,
//                   ),
//                   Step(
//                     title: const Text(
//                       "Name",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                       ),
//                     ),
//                     content: Column(
//                       children: [
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: "Name",
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(),
//                           ),
//                         )
//                       ],
//                     ),
//                     isActive: _currentStep >= 0,
//                     state: _currentStep >= 1
//                         ? StepState.complete
//                         : StepState.disabled,
//                   ),
//                   Step(
//                     title: const Text(
//                       "Phone",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                       ),
//                     ),
//                     content: Column(
//                       children: [
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: "Phone",
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(),
//                           ),
//                         )
//                       ],
//                     ),
//                     isActive: _currentStep >= 0,
//                     state: _currentStep >= 2
//                         ? StepState.complete
//                         : StepState.disabled,
//                   ),
//                   Step(
//                     title: const Text(
//                       "Email",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 17,
//                       ),
//                     ),
//                     content: Column(
//                       children: [
//                         TextFormField(
//                           decoration: const InputDecoration(
//                             hintText: "Email",
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(),
//                           ),
//                         )
//                       ],
//                     ),
//                     isActive: _currentStep >= 0,
//                     state: _currentStep >= 3
//                         ? StepState.complete
//                         : StepState.disabled,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
