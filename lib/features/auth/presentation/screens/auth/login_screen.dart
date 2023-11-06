import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routes/app_router.dart';
import 'package:flutter_application_1/features/auth/presentation/screens/auth/signup_screen.dart';
import 'package:flutter_application_1/core/widgets/molecules/login_form.dart';
import 'package:flutter_application_1/core/widgets/atoms/my_button.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void signUserIn() {}
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
                  'Sign in to your account',
                  style: TextStyle(fontSize: 14),
                ),
                Baseline(
                  baseline: 100,
                  baselineType: TextBaseline.alphabetic,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Register account',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SignInForm(),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Baseline(
                  baseline: 25,
                  baselineType: TextBaseline.alphabetic,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ],
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
}
