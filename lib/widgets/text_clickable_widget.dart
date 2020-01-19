import 'package:flutter/material.dart';

class TextClickableWidget extends StatelessWidget {
  final String text;
  final Function onTap;

  const TextClickableWidget({Key key, this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).primaryColor),
      ),
    );
  }
}
