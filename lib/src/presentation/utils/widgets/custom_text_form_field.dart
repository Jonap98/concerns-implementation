import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final bool isPassword;
  final TextInputType? type;
  final Icon? icon;

  const CustomTextFormField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.errorMessage,
    this.onChanged,
    this.validator,
    this.isPassword = false,
    this.type = TextInputType.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(25),
      borderSide: const BorderSide(color: Colors.white),
    );

    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        obscureText: isPassword,
        keyboardType: type,
        decoration: InputDecoration(
          prefixIcon: icon,
          enabledBorder: border,
          focusedBorder: border.copyWith(
            borderSide: const BorderSide(color: Colors.white),
          ),
          errorBorder: border.copyWith(
            borderSide: BorderSide(color: Colors.red.shade800),
          ),
          focusedErrorBorder: border.copyWith(
            borderSide: BorderSide(color: Colors.red.shade800),
          ),
          isDense: true,
          hintText: hint,
          focusColor: colors.primary,
          errorText: errorMessage,
          fillColor: Colors.white,
          filled: true,
        ),
      ),
    );
  }
}
