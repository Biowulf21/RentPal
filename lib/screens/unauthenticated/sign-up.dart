import 'package:bumblebee/repositories/input-validator-repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _signupKey = GlobalKey();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _organizationNameController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
            autovalidateMode: AutovalidateMode.always,
            key: _signupKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _firstNameController,
                  validator: (value) =>
                      InputValidator.validateName(value, "first"),
                ),
                TextFormField(
                  controller: _middleNameController,
                  validator: (value) =>
                      InputValidator.validateName(value, "middle"),
                ),
                TextFormField(
                  controller: _lastNameController,
                  validator: (value) =>
                      InputValidator.validateName(value, "last"),
                ),
                // TextFormField(),
              ],
            )),
      ),
    );
  }
}