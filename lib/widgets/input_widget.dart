import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final Color hintTextColor;

  final bool obscureText;
  final Color backgroundColor;
  final Color fillColor;
  final Widget suffixIcon;
  final bool showShadow;

  const InputWidget(
      {Key key,
      this.hintText = "",
      this.obscureText = false,
      this.backgroundColor = Colors.white,
      this.hintTextColor = Colors.blue,
      this.fillColor = Colors.blue,
      this.suffixIcon, this.showShadow = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                showShadow ? BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6.0,
                    offset: Offset(.0, 3.0),
                    spreadRadius: 0.06
                    ) : BoxShadow(color: Colors.transparent)
              ],
            ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        
        child: Container(
          color: backgroundColor,
          // decoration: BoxDecoration(
          //     backgroundBlendMode: BlendMode.color,
          //     color: Colors.grey.withOpacity(.5),
          //   boxShadow: [
          //     BoxShadow(
          //       blurRadius: .4,
          //           color: Colors.white,
          //   )]
          // ),
          child: TextField(
            
              autofocus: false,
              obscureText: obscureText,
              style: TextStyle(color: Theme.of(context).primaryColor),
              decoration: InputDecoration(
                suffixIcon: suffixIcon,
                fillColor: fillColor,
                hintText: hintText,
                hintStyle: TextStyle(color: hintTextColor),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide(color: Theme.of(context).primaryColor)),
              )),
        ),
      ),
    );
  }
}
