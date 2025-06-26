import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Theme.of(context).primaryColor],
                ),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/profile.jpg"),
                    radius: 40,
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/');
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'Counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/counter');
              },
            ),
            Divider(),
            ListTile(
              title: Text(
                'Products',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, '/products');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'RobotoMono',
            fontStyle: FontStyle.normal,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Center(child: Text("Hello W", style: TextStyle(fontSize: 33))),
    );
  }
}
