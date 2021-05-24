import 'package:flutter/material.dart';
import 'package:whatsapp_ui/helpers/status_helper.dart';
import 'package:whatsapp_ui/models/status_item_model.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        StatusItemModel statusItem = StatusHelper.getStatusItem(index);

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
                                    statusItem.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.0),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 2.0),
                                child: Text(
                                  statusItem.dateTime,
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 16.0),
                                ),
                              )
                            ],
                          ),
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
      itemCount: StatusHelper.itemCount,
    );
  }
}