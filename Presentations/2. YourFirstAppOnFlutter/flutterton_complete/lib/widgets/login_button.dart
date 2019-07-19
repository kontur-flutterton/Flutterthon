import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  LoginButton({@required this.onPressed, @required this.child});

  final VoidCallback onPressed;
  final Widget child;

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  int _buttonShade = 500;
  int _shadowShade = 800;

  void _setButtonState({@required bool isPressed}) {
    setState(() {
      _buttonShade = isPressed ? 600 : 500;
      _shadowShade = isPressed ? 900 : 800;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) {
        _setButtonState(isPressed: true);
      },
      onTapUp: (details) {
        _setButtonState(isPressed: false);
      },
      onTapCancel: () {
        _setButtonState(isPressed: false);
      },
      onTap: widget.onPressed,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlue[_shadowShade],
              offset: Offset(0.0, 8.0),
              blurRadius: 12.0,
            ),
          ],
          color: Colors.lightBlue[_buttonShade],
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
        child: Center(child: widget.child),
      ),
    );
  }
}
