import 'package:estudo_bloc_pattern/widgets/button_widget.dart';
import 'package:estudo_bloc_pattern/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class AuthPageSignIn extends StatefulWidget {
  @override
  _AuthPageSignInState createState() => _AuthPageSignInState();
}

class _AuthPageSignInState extends State<AuthPageSignIn> {
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
          InputWidget(
            hintText: "Senha",
            obscureText: true,
          ),
          Container(height: 40),
          ButtonWidget(
            label: "ENTRAR",
            backgroundColor: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onTap: () {
              print("Clicou em entrar no app!");
              Navigator.of(context).pushReplacementNamed("admin");
            },
          ),
          Spacer()
        ],
      ),
    );
  }
}
