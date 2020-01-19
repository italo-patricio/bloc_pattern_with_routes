
import 'package:estudo_bloc_pattern/widgets/container_responsive.dart';
import 'package:flutter/material.dart';

class AdminBuildItemRowWidget extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final Widget icon;

  const AdminBuildItemRowWidget(
      {Key key, this.primaryText, this.secondaryText, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ResponsiveContainer(
            
            alignment: Alignment.centerRight,
            child: Text(
              primaryText,
              // textAlign: TextAlign.right,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ), heightPercent: 10,
            widthPercent: 25,
          ),
          Container(width: 10),
          Expanded(
            child: Row(
              children: <Widget>[
                Text(
                  secondaryText,
                  style: TextStyle(
                      color: Colors.white),
                ),
                Container(width: 5),
                icon == null ? Container() : icon
              ],
            ),
          ),
        ],
      ),
    );
  }
}
