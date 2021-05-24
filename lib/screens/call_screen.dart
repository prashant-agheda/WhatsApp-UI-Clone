import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_ui/helpers/call_helper.dart';
import 'package:whatsapp_ui/models/call_item_model.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key key}) : super(key: key);

  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        CallItemModel callItem = CallHelper.getCallItem(index);

        return SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                child: Row(
                  children: [

                    Icon(Icons.account_circle, size: 64.0),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  callItem.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 2.0),
                              child: Text(
                                callItem.dateTime,
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        color: HexColor("#075E54"),
                        icon: Icon(Icons.call),
                        iconSize: 32.0,
                        onPressed: () {
                          print("Call Button Pressed");
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Divider(),

            ],
          ),
        );
      },
      itemCount: CallHelper.itemCount,
    );
  }
}
