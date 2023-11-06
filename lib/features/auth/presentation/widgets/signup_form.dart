import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm(
      {
      //   required this.formKey,
      // required this.emailController,
      // required this.passwordController,
      super.key});

  // final TextEditingController emailController;
  // final TextEditingController passwordController;
  // final GlobalKey<FormState> formKey;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return const Form(
        child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: "Full Name",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 33, 180, 243))),
              fillColor: Colors.white,
              filled: true),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Email Address",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 33, 180, 243))),
              fillColor: Colors.white,
              filled: true),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 33, 180, 243))),
              fillColor: Colors.white,
              filled: true),
        ),
        SizedBox(
          height: 20,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Comfrim Password',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.grey)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 33, 180, 243))),
              fillColor: Colors.white,
              filled: true),
        ),
      ],
    ));
  }
}

// class InputField extends StatelessWidget {
//   const InputField({super.key, required this.fieldName});
//   final String fieldName;
//   @override
//   Widget build(BuildContext context) {
//     return const TextField(
//       decoration: InputDecoration(
//           hintText: fieldName,
//           enabledBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//               borderSide: BorderSide(color: Colors.grey)),
//           focusedBorder: OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//               borderSide: BorderSide(color: Color.fromARGB(255, 33, 180, 243))),
//           fillColor: Colors.white,
//           filled: true),
//     );
//   }
// }
