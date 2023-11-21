import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quickcart/core/shared/app_button.dart';
import 'package:quickcart/core/shared/snackbar.dart';
import 'package:quickcart/features/authentication/presentation/widgets/header_widget.dart';
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  static final TextEditingController _email = TextEditingController();
  static const String routeName = '/reset';

  Future<void> _resetPassword(BuildContext context) async {
    try {
      print(_email.text);
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _email.text.trim(),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        appSnackBar("Reset password link is successfully been sent"),
      );
    } on FirebaseAuthException catch (e) {
      print(_email.text);
      ScaffoldMessenger.of(context).showSnackBar(
        appSnackBar("Error: ${e.message}"),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                HeaderWidget(customClipper: BigClipper()),
                AppBar(
                  title: const Text("Reset Password"),
                  backgroundColor: Colors.transparent,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  const Text(
                    'quickcart',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const Text(
                    'reset your password',
                    style: TextStyle(color: Colors.grey, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(height: 30.0),
                  TextField(
                    controller: _email,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(color: Colors.red, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(height: 20.0),
                  AppButton(
                    onPressed: () => _resetPassword(context),
                    title: 'Reset',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
