import 'package:estudo_bloc_pattern/widgets/button_widget.dart';
import 'package:estudo_bloc_pattern/widgets/text_clickable_widget.dart';
import 'package:flutter/material.dart';

class AuthPageMain extends StatefulWidget {
  final PageController pageController;

  const AuthPageMain({Key key, this.pageController}) : super(key: key);

  @override
  _AuthPageMainState createState() => _AuthPageMainState();
}

class _AuthPageMainState extends State<AuthPageMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
//    final mq = MediaQuery.of(context);
    // final widthMQ = mq.size.width;
//    final heightMQ = mq.size.height;

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
          Container(height: 15),
          Image.asset("assets/imgs/logo_login.png"),
          Spacer(),
          ButtonWidget(
            label: "Login",
            height: 50,
            width: double.infinity,
            backgroundColor: Theme.of(context).primaryColor,
            textColor: Colors.white,
            onTap: () {
              print("Clicado no login...");
              widget.pageController.jumpToPage(2);
            },
          ),
          Container(
            height: 30,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextClickableWidget(
                  text: "Cadastrar",
                  onTap: () {
                    print("Clicou em cadastrar..");
                    widget.pageController.jumpToPage(0);
                  },
                ),
                TextClickableWidget(
                  text: "Esqueceu a senha?",
                  onTap: () {
                    print("Clicou em esqueceu a senha..");
                    Navigator.pushNamed(context,'password_reset');
                  },
                ),
              ]),
          Spacer()
        ],
      ),
    );
  }
}
