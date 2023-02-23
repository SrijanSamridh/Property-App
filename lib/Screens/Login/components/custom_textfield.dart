import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, required this.icon, required this.hintText, this.hideText = false, required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final String hintText;
  final bool hideText;
  final FormFieldValidator onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: TextFormField(
        obscuringCharacter: '*',
        obscureText: hideText,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: TextStyle(color: Colors.white, fontSize: 18),
          filled: true,
          fillColor: Colors.white.withOpacity(0.5),
          prefixIcon: Icon(
            icon,
            color: Colors.orange,
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50.0)),
          focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50.0)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(50.0)),
        ),
        validator: onPress,
      ),
    );
  }
}
