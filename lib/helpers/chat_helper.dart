import 'package:whatsapp_ui/models/chat_item_model.dart';

class ChatHelper {

  static final chatsList = [
    ChatItemModel("Prashant", "Hello buddy!!", "23/05/2021"),
    ChatItemModel("Samuel", "Today's Event", "21/05/2021"),
    ChatItemModel("John", "Ordering Pizza", "02/05/2021"),
    ChatItemModel("Alan", "At the Gym", "10/05/2021"),
    ChatItemModel("Martina", "Playing Football", "19/05/2021"),
    ChatItemModel("Justin", "Recording Music", "10/04/2021"),
    ChatItemModel("Julie", "Good Night", "08/03/2021"),
    ChatItemModel("Peter", "Good Morning", "05/03/2021"),
    ChatItemModel("Kalle", "Programming Now", "03/03/2021"),
  ];

  static ChatItemModel getChatItemModel(int index) {
    return chatsList[index];
  }

  static var itemCount = chatsList.length;
}