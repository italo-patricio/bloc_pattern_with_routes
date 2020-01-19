import 'package:estudo_bloc_pattern/widgets/button_widget.dart';
import 'package:estudo_bloc_pattern/widgets/input_widget.dart';
import 'package:flutter/material.dart';

class AuthPagePasswordReset extends StatefulWidget {
  @override
  _AuthPagePasswordResetState createState() => _AuthPagePasswordResetState();
}

class _AuthPagePasswordResetState extends State<AuthPagePasswordReset> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
           Image.asset(
            "assets/imgs/elevador_manutencao.jpg",
            fit: BoxFit.cover,
          ),
          Container(
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
                          fontSize: 30,
                          color: Theme.of(context).colorScheme.primary),
                      children: <TextSpan>[
                        TextSpan(
                            text: "APP",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
                ),
                Spacer(),
                InputWidget(hintText: "informe seu email"),
                Container(height: 40),
                ButtonWidget(
                  label: "ENVIAR",
                  backgroundColor: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                ),
                Spacer()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
