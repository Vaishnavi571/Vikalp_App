import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewMessages extends StatefulWidget {
  final List messages;

  const NewMessages({Key? key, required this.messages}) : super(key: key);

  @override
  State<NewMessages> createState() => _NewMessagesState();
}

class _NewMessagesState extends State<NewMessages> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('kk:mm').format(now);
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.all(2),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: widget.messages[index]['isUserMessage']
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          if (widget.messages[index]['isUserMessage'] ==
                              false) ...[
                            Container(
                              margin: const EdgeInsets.only(right: 8.0),
                              child: CircleAvatar(
                                backgroundColor: widget.messages[index]
                                        ['isUserMessage']
                                    ? new Color(0xff380955)
                                    : new Color(0xff000000),
                                child: Text(
                                  widget.messages[index]['isUserMessage']
                                      ? "User"
                                      : "Vikalp",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: 'poppins',
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(
                                  15,
                                ),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(
                                    widget.messages[index]['isUserMessage']
                                        ? 0
                                        : 15),
                                topLeft: Radius.circular(widget.messages[index]
                                        ['isUserMessage']
                                    ? 15
                                    : 0),
                              ),
                              color: widget.messages[index]['isUserMessage']
                                  ? new Color(0xff380955)
                                  : new Color(0xff000000)),
                          constraints: BoxConstraints(maxWidth: w * 2 / 3),
                          child: Text(
                            widget.messages[index]['message'].text.text[0],
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontFamily: 'poppins',
                                fontSize: 14,
                                color: Colors.white),
                          )),
                      Column(
                        children: [
                          if (widget.messages[index]['isUserMessage']) ...[
                            Container(
                              margin: const EdgeInsets.only(left: 8.0),
                              child: CircleAvatar(
                                backgroundColor: widget.messages[index]
                                        ['isUserMessage']
                                    ? new Color(0xff380955)
                                    : new Color(0xff232323),
                                child: Text(
                                  widget.messages[index]['isUserMessage']
                                      ? "User"
                                      : "Vikalp",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: 'poppins',
                                      fontSize: 10,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ]
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: widget.messages[index]['isUserMessage']
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          top: 2.0,
                        ),
                        child: Text(
                          (() {
                            if (true) {
                              DateTime now = DateTime.now();
                              String formattedDate =
                                  DateFormat('kk:mm').format(now);
                              return formattedDate;
                            }
                          })(),
                          style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontStyle: FontStyle.normal,
                              fontFamily: 'poppins',
                              fontSize: 10,
                              color: Colors.blueGrey),
                        ),
                      )
                    ],
                  )
                ],
              ));
        },
        separatorBuilder: (_, i) => Padding(padding: EdgeInsets.only(top: 5)),
        itemCount: widget.messages.length);
  }
}
