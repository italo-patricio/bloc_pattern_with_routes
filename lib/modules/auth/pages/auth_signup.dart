import 'package:estudo_bloc_pattern/widgets/button_widget.dart';
import 'package:estudo_bloc_pattern/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class AuthPageSignUp extends StatefulWidget {
  @override
  _AuthPageSignUpState createState() => _AuthPageSignUpState();
}

class _AuthPageSignUpState extends State<AuthPageSignUp> {
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(),
          RichText(
            text: TextSpan(
                text: "Elev",
                style: TextStyle(
                    fontSize: 30, color: Theme.of(context).colorScheme.primary),
                children: <TextSpan>[
                  TextSpan(
                      text: "APP",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ]),
          ),
          Spacer(),
          InputWidget(hintText: "italopatricio@email.com"),
          Container(height: 25),
          InputWidget(hintText: "Senha", obscureText: true),
          Container(height: 25),
          InputWidget(hintText: "Confirmar Senha", obscureText: true),
          Container(height: 40),
          ButtonWidget(
            label: "CADASTRAR",
            backgroundColor: Theme.of(context).primaryColor,
            textColor: Colors.white,
          ),
          Spacer()
        ],
      ),
    );
  }
}
