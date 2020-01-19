import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final double height;
  final double width;
  final Color backgroundColor;
  final Color textColor;
  final Function onTap;
  final double labelFontSize;

  const ButtonWidget(
      {Key key,
      this.height = 50,
      this.label = "",
      this.width,
      this.backgroundColor,
      this.textColor,
      this.onTap,
      this.labelFontSize = 15})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Material(
        color: backgroundColor == null
            ? Theme.of(context).primaryColor
            : backgroundColor,
        child: InkWell(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            width: width,
            height: height,
            alignment: Alignment.center,
            child: Text(label,
                style: TextStyle(
                    fontSize: labelFontSize,
                    color: textColor,
                    fontWeight: FontWeight.bold)),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
