import 'package:estudo_bloc_pattern/modules/auth/pages/auth_main.dart';
import 'package:estudo_bloc_pattern/modules/auth/pages/auth_signup.dart';
import 'package:flutter/material.dart';

import 'pages/auth_signin.dart';

class AuthPageMaster extends StatefulWidget {
  @override
  _AuthPageMasterState createState() => _AuthPageMasterState();
}

class _AuthPageMasterState extends State<AuthPageMaster> {
  PageController _controller;

  @override
  void initState() {
    super.initState();

    _controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/imgs/elevador_manutencao.jpg",
            fit: BoxFit.cover,
          ),
          PageView(controller: _controller,
           children: <Widget>[
            AuthPageSignUp(),
            AuthPageMain(pageController: _controller),
            AuthPageSignIn(),
          ]),
        ],
      ),
    );
  }
}