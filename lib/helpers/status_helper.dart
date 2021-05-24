import 'package:whatsapp_ui/models/status_item_model.dart';

class StatusHelper {

  static var statusList = [
    StatusItemModel("Priya", "Today, 05:22 PM"),
    StatusItemModel("Helly", "Today, 10:22 PM"),
    StatusItemModel("Kyle", "Today, 08:22 PM"),
    StatusItemModel("Prashant", "Yesterday, 11:21 PM"),
    StatusItemModel("John", "Yesterday, 10:22 PM"),
  ];

  static StatusItemModel getStatusItem(int index) {
    return statusList[index];
  }

  static var itemCount = statusList.length;

}