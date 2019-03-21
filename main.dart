import 'package:flutter/material.dart';
import 'package:podcast/new_page.dart';

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "tab",
  home: new App(),
));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {

 TabController controller;

 @override
 void initState(){
   controller=new TabController(vsync:this , length: 4 );
   super.initState();
 }

 @override
 void dispose(){
   controller.dispose();
   super.dispose();
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        backgroundColor: Colors.green,
         title: new Text("PODCAST  APP",style: new TextStyle(fontSize: 25,color: Colors.black45),),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.search), onPressed: () {},iconSize: 35,color: Colors.black,),
            new IconButton(icon: new Icon(Icons.file_download), onPressed: () {},iconSize: 35,color: Colors.black,)

          ],
          bottom: new TabBar(
          controller: controller,
        tabs: <Widget>[
          new Tab(icon: new Icon( Icons.ondemand_video),text: "Videos",),
          new Tab(icon: new Icon(Icons.headset),text: "Audios",),
        ],
      )
      ),

      drawer: new  Drawer(
        child:new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("UserName",style: new TextStyle(fontSize: 18),), accountEmail: new Text("user.gmail.com",style: new TextStyle(fontSize: 16),),
              currentAccountPicture: new CircleAvatar(
                backgroundColor:Colors.white,
                child: new Text("U",style: new TextStyle(fontSize: 30),),

              ),
            ),
            new ListTile(
                title: new Text("Settings",style: new TextStyle(fontSize: 22),),
                trailing: new Icon(Icons.settings),
                onTap: () {
                  //Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new  Newpage("Settings")));
                }
            ),
            new ListTile(
                title: new Text("Defaults",style: new TextStyle(fontSize: 22),),
                trailing: new Icon(Icons.arrow_right),
                onTap: () {
                 // Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new  Newpage("Defaults")));
                }
            ),
            new ListTile(
                title: new Text("Feedback",style: new TextStyle(fontSize: 22),),
                trailing: new Icon(Icons.feedback),
                onTap: () {
                  //Navigator.of(context).pop();
                  Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new  Newpage("Feedback")));
                }
            ),
            new ListTile(
              title: new Text("Back",style: new TextStyle(fontSize: 22),),
              trailing: new Icon(Icons.close),
              onTap: ()=>Navigator.of(context).pop(),

            ),
          ],
        ) ,
      ),

/*bottomNavigationBar: new Material(
  color: Colors.green ,
  child: new TabBar(
      controller: controller,
      tabs: <Widget>[
        new Tab(icon: new Icon( Icons.perm_identity),text: "Profile",),
        new Tab(icon: new Icon( Icons.favorite),text: "Favorite",),
        new Tab(icon: new Icon(Icons.history),text: "History",),
      ],
  ),
),*/
    );
  }
}



