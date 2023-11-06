import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/user/user_bloc.dart';
import 'package:flutter_application_1/features/auth/presentation/bloc/user/user_event.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/my_button.dart';
import 'package:flutter_application_1/features/auth/presentation/widgets/signup_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return SignUpScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: const [
            SizedBox(
              height: 100,
            ),
            Text("Easy to learn, discover more skill",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                )),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign up for an account',
                  style: TextStyle(fontSize: 14),
                ),
                Baseline(
                  baseline: 100,
                  baselineType: TextBaseline.alphabetic,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SignUpForm(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 30,
            ),
            MyButton()
          ],
        ),
      ),
    );
  }

  void _buildFloatingActionButton(BuildContext context) {
    BlocProvider.of<UserBloc>(context).add(const CreateUser());
  }
}
