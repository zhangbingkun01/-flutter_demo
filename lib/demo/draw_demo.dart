import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName:
                Text('Hi~', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('www.baidu.com'),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1427619798,3243000733&fm=26&gp=0.jpg')),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage(
                    'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1427619798,3243000733&fm=26&gp=0.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.yellow[400], BlendMode.hardLight),
              ),
            ),
          ),
          ListTile(
            title: Text('Messages', textAlign: TextAlign.right),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
