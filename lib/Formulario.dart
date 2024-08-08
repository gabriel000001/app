// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// class Formulario extends StatelessWidget {
//   const Formulario({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//     final myController = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.primary,
//         title: Text('Formulário'),
//       ),
//       body: Column(
//         children: [
//           Form(
//             key: _formKey,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Enter your email',
//                   ),
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   inputFormatters: [
//                     // obrigatório
//                     FilteringTextInputFormatter.digitsOnly,
//                     CpfInputFormatter(),
//                   ],
//                   decoration: const InputDecoration(
//                     hintText: 'Enter your CPF',
//                   ),
//                   validator: (String? value) {
//                     if (!UtilBrasilFields.isCPFValido(value)) {
//                       return "DIGITA CERTO BURRO!";
//                     }
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   controller: myController,
//                   decoration: const InputDecoration(
//                     hintText: 'Enter your password',
//                   ),
//                   validator: (String? value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter some text';
//                     }
//                     return null;
//                   },
//                 ),
//                 TextFormField(
//                   decoration: const InputDecoration(
//                     hintText: 'Confirm your password',
//                   ),
//                   validator: (String? value) {
//                     var senha = myController.text;
//                     if (value == null || value.isEmpty) {
//                       return 'Please enter some text';
//                     } else if (value == senha) {
//                       return null;
//                     } else if (value != senha) {
//                       return 'Password incorrect';
//                     }
//                     return null;
//                   },
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 16.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       // Validate will return true if the form is valid, or false if
//                       // the form is invalid.
//                       if (_formKey.currentState!.validate()) {
//                         // Process data.
//                       }
//                     },
//                     child: const Text('Submit'),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
