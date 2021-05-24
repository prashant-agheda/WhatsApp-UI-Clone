import 'package:whatsapp_ui/models/call_item_model.dart';

class CallHelper {

  static var callList = [
    CallItemModel("Prashant", "Today 02:45 PM"),
    CallItemModel("Priya", "Today, 05:22 PM"),
    CallItemModel("Helly", "Today, 10:22 PM"),
    CallItemModel("Kyle", "Today, 08:22 PM"),
    CallItemModel("John", "Yesterday, 10:22 PM"),
  ];

  static CallItemModel getCallItem(int index) {
    return callList[index];
  }

  static var itemCount = callList.length;

}