import 'package:dreamers_app_design/src/constants/theme.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  
  final String name;
  final bool obsecure;
  final IconData? suffixIcon;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const InputField({
    super.key,
    this.suffixIcon,
    required this.name,
    required this.obsecure,
    required this.controller,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      keyboardType: keyboardType,
      style: const TextStyle(
        color: Colors.white
      ),
      decoration: InputDecoration(
        label: Text(
          name,
          style: const TextStyle(
            color: whiteColor
          ),
        ),
        labelStyle: const TextStyle(
          color: whiteColor
        ),
        suffixIcon: suffixIcon != null
          ?IconButton(
              onPressed: null,
              icon: Icon(
                suffixIcon,
                color: whiteColor,
              ),
            )
          : null,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white
          )
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: whiteColor
          )
        )
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$name cannot be empty';
        }
        return null;
      },
    );
  }
}