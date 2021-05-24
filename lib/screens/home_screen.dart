import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_ui/screens/call_screen.dart';
import 'package:whatsapp_ui/screens/chat_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  // Creating a Controller for Tabs and Icon
  TabController whatsappTabController;
  IconData fabIcon = Icons.message;

  @override
  void initState() {
    super.initState();
    whatsappTabController = new TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {
          switch (whatsappTabController.index) {
            case 0:
              break;

            case 1:
              fabIcon = Icons.message;
              break;

            case 2:
              fabIcon = Icons.camera_enhance;
              break;

            case 3:
              fabIcon = Icons.call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Search Button Pressed");
              },
            ),
          ),
          IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {
                print("More Button Pressed");
              },
            ),
        ],
        backgroundColor: HexColor("#075E54"),
        bottom: TabBar(
          automaticIndicatorColorAdjustment: true,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
              child: Text("STATUS"),
            ),
            Tab(
              child: Text("CALLS"),
            ),
          ],
          indicatorColor: Colors.white,
          controller: whatsappTabController,
        ),
      ),
      body: TabBarView(
        controller: whatsappTabController,
        children: [
          Icon(Icons.camera_alt),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(fabIcon),
        backgroundColor: HexColor("#25D366"),
        onPressed: () {
          print("FAB Button Pressed");
        },
      ),
    );
  }
}
