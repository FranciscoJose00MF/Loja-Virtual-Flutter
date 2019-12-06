import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel=Container(
    height: 200,
    child: Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/327321.jpg'),
        AssetImage('images/669969.jpg'),
        AssetImage('images/671281.jpg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
    ),
  );
  return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text("ShopApp"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: (){}),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: (){}),
        ]
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // header
            UserAccountsDrawerHeader(
              accountName: Text('Francisco José'),
              accountEmail: Text('franciscodomingosjose06798@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white)
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ), 
              ),
              // body
              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('Home Page'),
                  leading: Icon(Icons.home, color: Colors.red),
                ),
              ),

              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person, color: Colors.red),
                ),
              ),

              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_cart, color: Colors.red),
                ),
              ),

              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('Categoris'),
                  leading: Icon(Icons.dashboard, color: Colors.red),
                ),
              ),

              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.red),
                ),
              ),


              Divider(),

              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings, color: Colors.blue),
                ),
              ),

              InkWell(
                onTap: (){},
                              child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help, color: Colors.green),
                ),
              ),


          ]
        ),
      ),

      body: ListView(
        children: <Widget>[
          imageCarousel
        ]
      ),

    );
  }
}