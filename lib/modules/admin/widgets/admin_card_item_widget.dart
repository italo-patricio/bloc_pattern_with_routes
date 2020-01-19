import 'package:flutter/material.dart';

class AdminCardItemWidget extends StatelessWidget {
  final Function onTap;
  final IconData iconData;
  final String title;

  const AdminCardItemWidget(
      {Key key, this.onTap, this.iconData, this.title = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 2,
        color: Theme.of(context).primaryColor.withOpacity(0.7),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.width * 0.2,
          child: Column(
            children: <Widget>[
              Container(height: 50),
              Icon(
                iconData,
                size: 50,
                color: Colors.white,
              ),
              Container(
                height: 20,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
