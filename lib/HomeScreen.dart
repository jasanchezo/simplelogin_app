import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String userName;
  HomeScreen({Key key, this.userName}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Home Screen"),
      ),
      body: Center(
        child: Text("Home Screen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(widget.userName),
              accountEmail: Text(widget.userName),
              currentAccountPicture: CircleAvatar(
                // backgroundColor: Colors.black26,
                child: Text(widget.userName[0]),
              ),
              //decoration: BoxDecoration(color: Colors.orange),
            ),
            AboutListTile(
                child: Text("About"),
                applicationName: "My Login App",
                applicationVersion: "v1.0.0",
                applicationIcon: Icon(Icons.adb),
                icon: Icon(Icons.info)),
            Divider(),
            ListTile(
              leading: new Icon(Icons.close),
              title: new Text("Cerrar"),
              onTap: () {
                setState(() {
                  // pop closes the drawer
                  Navigator.pop(context);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
