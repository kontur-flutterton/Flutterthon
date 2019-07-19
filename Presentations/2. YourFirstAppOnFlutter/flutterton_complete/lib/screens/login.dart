import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterthon/widgets/login_button.dart';
import 'package:flutterthon/widgets/login_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  bool _isRememberMeChecked = false;

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light
        .copyWith(statusBarBrightness: Brightness.dark));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 32.0),
                  child: Image.asset(
                    'images/flutter.png',
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
                LoginField(
                  icon: Icons.mail_outline,
                  label: 'Email',
                ),
                SizedBox(height: 16.0),
                LoginField(
                  icon: Icons.lock_open,
                  label: 'Password',
                  obscureText: true,
                ),
                SizedBox(height: 16.0),
                Row(
                  children: <Widget>[
                    Checkbox(
                      activeColor: Colors.lightBlue,
                      value: _isRememberMeChecked,
                      onChanged: (newValue) {
                        setState(() {
                          _isRememberMeChecked = !_isRememberMeChecked;
                        });
                      },
                    ),
                    Text('Remember me'),
                    Expanded(
                      child: Container(),
                    ),
                    FlatButton(
                      child: Text(
                        'Forgot password?'.toUpperCase(),
                        style:
                            TextStyle(color: Colors.lightBlue, fontSize: 12.0),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                LoginButton(
                  child: Text(
                    'LOG IN',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    final snackBar =
                        SnackBar(content: Text('Not implemented!'));
                    _scaffoldKey.currentState.showSnackBar(snackBar);
                  },
                ),
                SizedBox(
                  height: 32.0,
                ),
                Center(
                  child: Text(
                    'or connect with',
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                ),
                SizedBox(
                  height: 16.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LoginButton(
                      child: Icon(FontAwesomeIcons.facebookF),
                      onPressed: () {},
                    ),
                    SizedBox(width: 16.0),
                    LoginButton(
                      child: Icon(FontAwesomeIcons.googlePlusG),
                      onPressed: () {},
                    ),
                    SizedBox(width: 16.0),
                    LoginButton(
                      child: Icon(FontAwesomeIcons.twitter),
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
