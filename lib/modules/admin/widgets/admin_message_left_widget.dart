import 'package:flutter/material.dart';

class MessageLeftWidget extends StatelessWidget {
  final String title;
  final String dateText;
  final String message;

  const MessageLeftWidget({
    Key key,
    this.title = "",
    this.dateText = "",
    this.message = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            // alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20),
            // width: MediaQuery.of(context).size.width * 0.9,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(title,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14)),
                  Container(
                    width: 60,
                  ),
                  Text(dateText,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 12)),
                  Spacer()
                ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width * .8,
                    // height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topRight: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1.5, 1.5),
                              color: Colors.grey,
                              spreadRadius: 1,
                              blurRadius: 2)
                        ]),
                    child: Text.rich(
                      TextSpan(text: message),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
