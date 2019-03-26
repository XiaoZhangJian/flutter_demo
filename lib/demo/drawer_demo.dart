
import 'package:flutter/material.dart';


class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Jason",style:TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text("zhangjian.kims@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars0.githubusercontent.com/u/12776443?s=460&v=4"),
                ),
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  image: DecorationImage(
                    image: NetworkImage("https://ws2.sinaimg.cn/large/9150e4e5gy1g1cuz6aug1j20ci08vgm3.jpg"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight
                      )
                  )
                ),
              ),
              ListTile(
                title: Text("Messages",textAlign: TextAlign.right),
                trailing: Icon(Icons.message,color: Colors.black12,size:22.0),
                onTap: ()=> Navigator.pop(context),
              ),
              ListTile(
                title: Text("Messages",textAlign: TextAlign.right),
                trailing: Icon(Icons.message,color: Colors.black12,size:22.0),
              ),
              ListTile(
                title: Text("Messages",textAlign: TextAlign.right),
                trailing: Icon(Icons.message,color: Colors.black12,size:22.0),
              ),
              
            ],
          ),
        );
  }
}



