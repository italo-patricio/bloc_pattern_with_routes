import 'package:flutter/material.dart';

class MessageRightWidget extends StatelessWidget {
  final String title;
  final String dateText;
  final String message;

  const MessageRightWidget({
    Key key,
    this.title = "",
    this.dateText = "",
    this.message = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Spacer(),
                Text(dateText,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor, fontSize: 12)),
                Container(
                  width: 10,
                ),
                Text(title,
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14)),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width * .8,
                    // height: message.length.toDouble() * .7,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFFBCE0FD),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(-1.5, 1.5),
                              color: Colors.grey,
                              spreadRadius: 0.1,
                              blurRadius: 4)
                        ]),
                    child: Text.rich(
                      TextSpan(text: message),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          shadows: [
                            // BoxShadow(
                            //     color: Colors.grey.withOpacity(0.9),
                            //     spreadRadius: 4,
                            //     blurRadius: 5)
                          ]),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
