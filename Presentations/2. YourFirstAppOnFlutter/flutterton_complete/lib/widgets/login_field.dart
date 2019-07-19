import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  LoginField({this.icon, this.label, this.obscureText = false});

  final IconData icon;
  final String label;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          side: BorderSide(color: Colors.grey[100]),
        ),
      ),
      child: TextField(
        obscureText: obscureText,
        cursorColor: Colors.white,
        cursorWidth: 1.0,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey[400]),
          border: InputBorder.none,
          prefixIcon: Icon(
            icon,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}
